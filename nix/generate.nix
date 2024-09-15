{ pkgs, data }:
{
  nixpkgsRef ? null,
}:
let
  inherit (pkgs) lib;
  inherit (import ./config.nix) startEpoch;

  autoEligibleVoters =
    pkgs.runCommandNoCC "auto-eligible-voters.json"
      {
        nativeBuildInputs = [ pkgs.jq ];
        passAsFile = [ "electorateJq" ];

        electorateJq = # jq
          ''
            select(
              .contributions.is_merger
              or .contributions.authored_commit_count >= 25
            ) |
            "\(.id) \(.logins[-1])"
          '';
      }
      ''
        jq -rcf "$electorateJqPath" ${data} > $out
      '';

  maintainersRev = "c51b40c5660fcb492bd1d01dd210005315b4cc7b";
  maintainersHash = "sha256-12oFVhOjKjnLuud9u25xD0y3x6Ipkp5XOZFmqw2ND1g=";

  # Like maintainer-list.nix, but also including removed entries
  combinedMaintainerList =
    pkgs.runCommandNoCC "combined-maintainer-list.json"
      {
        nativeBuildInputs = [
          pkgs.nix
          pkgs.gitMinimal
          pkgs.cacert
          pkgs.jq
        ];
        # TODO: Move this into the script, so that we don't have to keep updating the hash
        outputHash = maintainersHash;
        outputHashAlgo = "sha256";
        outputHashMode = "flat";
      }
      ''
        ${
          if nixpkgsRef != null then
            ''
              export GIT_ALTERNATE_OBJECT_DIRECTORIES=${
                lib.fileset.toSource {
                  root = nixpkgsRef;
                  fileset = lib.fileset.unions (
                    map (lib.path.append (lib.path.append nixpkgsRef ".git")) [
                      "objects"
                      "HEAD"
                      "refs"
                    ]
                  );
                }
              }/.git/objects
            ''
          else
            ''
              echo -e "\e[33mIf you have a local Nixpkgs clone, pass it using \`--arg nixpkgsRef ~/src/nixpkgs\` to speed this step up a lot\e[0m"
            ''
        }
        export NIX_STATE_DIR=$(mktemp -d)

        git clone --branch master --single-branch https://github.com/NixOS/nixpkgs nixpkgs

        git -C nixpkgs log \
          --after=${toString startEpoch} \
          --no-merges \
          --format='%H %cs' \
          ${maintainersRev} \
          -- maintainers/maintainer-list.nix | \
          while read -r rev date; do
            echo "Getting maintainers for $rev from $date" >&2
            git -C nixpkgs show "$rev":maintainers/maintainer-list.nix |
              {
                nix-instantiate --eval --strict --json - || true
              } | jq --arg rev "$rev" 'with_entries(.value.rev |= $ARGS.named.rev)'
          done | \
          jq -n 'reduce inputs as $maintainers ({}; ($maintainers | with_entries(.key = "\(.value.githubId)")) * .)' \
          > $out
      '';
in
pkgs.writeShellScript "generate-voters" ''
  set -euo pipefail
  export PATH=${
    lib.makeBinPath [
      pkgs.github-cli
      pkgs.jq
    ]
  }

  echo "Generating voters.json"
  coproc write {
    jq -s from_entries > voters.json
  }

  >usersWithoutEmailAndGitHub.txt

  while read -r id login; do

    echo "Processing @$login ($id)"

    maintainerEntry=$(jq -r --argjson id "$id" '."\($id)"' ${combinedMaintainerList})

    if user=$(gh api /user/$id --cache 1000h); then
      # They might have updated their handle by now
      login=$(jq -r .login <<< "$user")
      extraArgs=(--argjson value "$id")
      userExists=1
    else
      echo -e "\e[33mAccount does not exist anymore\e[0m"
      extraArgs=(--arg value "@$login: GitHub account does not exist anymore, so you can't interact with this repository")
      userExists=
    fi

    if email=$(jq -re .email <<< "$maintainerEntry") && [[ "$email" != *noreply* ]]; then
      true
    elif email=$(jq -re .email <<< "$user"); then
      true
    else
      echo -e "\e[33mNo email found\e[0m"
      if [[ -n "$userExists" ]]; then
        email="@$login: No known email, you cannot vote unless one is added with a PR!"
      else
        echo -e "\e[31mGitHub account does not exist anymore and no email was found, writing their original username and maintainer entry (if it exists) to usersWithoutEmailAndGitHub.txt, they should be contacted manually\e[0m"
        echo "$login ($id): $maintainerEntry" >> usersWithoutEmailAndGitHub.txt
        continue
      fi
    fi

    jq -cn '$ARGS.named' \
      --arg key "$email" \
      "''${extraArgs[@]}" >& "''${write[1]}"
  done < ${autoEligibleVoters}
''
