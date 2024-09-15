{
  system ? builtins.currentSystem,
}:
let
  inherit (import ../. { inherit system; }) pkgs voters;
  inherit (pkgs) lib;

  org = "NixOS";
  repo = "https://github.com/${org}/SC-election-2024";

  p =
    path:
    assert builtins.pathExists path;
    repo + "/tree/main"
    + lib.removePrefix "." (lib.path.removePrefix ../. path);

  sendEmail = pkgs.writeShellScript "send-email.sh" (''
    PATH=${lib.makeBinPath [ pkgs.pandoc pkgs.msmtp pkgs.coreutils pkgs.glibc ]}
  '' + builtins.readFile ../scripts/send-email.sh);
in
{
  
  announce =
    let
      announcement =
        isEmail: loginExists:
        lib.optionalString (isEmail && loginExists) ''
          Hello, @@GITHUB_LOGIN@

        ''
        + ''
          As a first step towards a better governance for official Nix projects,
          we are happy to announce the kick-off of the [first Nix Steering Committee election][repo]!

          [repo]: ${repo}

          The Steering Committee will be a primary leadership body, responsible for steering the official Nix projects;
          organisationally, socially and technically.
          This includes making decisions over what is official, managing teams,
          approving NixOS Foundation policies relevant for the community,
          being the final escalation point, and more.

          While the SC is given the authority to make decisions within the scope of its responsibilities directly,
          one of the primary goals should be to delegate as much of it as possible.

        ''
        + lib.optionalString isEmail ''
          Note that you can also read and publicly discuss this announcement [on Discourse][discourse].

          [discourse]: @DISCOURSE_LINK@

        ''
        + ''
          ## Participating

        ''
        + (
          if isEmail then
            ''
              You're receiving this email because you're an [automatically eligible] voter.
              If you'd like to use this email address for voting, please [activate] it.
              Otherwise, [change your email][email] first.

              [activate]: https://civs1.civs.us/cgi-bin/opt_in.pl

            ''
            + (
              if loginExists then
                ''
                  Your GitHub account @@GITHUB_LOGIN@ is also being added to the [@NixOS/voters-2024][team] GitHub team.

                ''
              else
                ''
                  Since your original GitHub account @@GITHUB_LOGIN@ doesn't exist anymore,
                  we could not add you to the [@NixOS/voters-2024][team] GitHub team.
                  If you have a new GitHub account, let us know in a reply so we can add you.

                ''
            )
          else
            ''
              [Automatically eligible] voters will be sent an email and be added/invited to the [@NixOS/voters-2024][team] GitHub team.
              If you're on the GitHub team but have not received an email, make sure to [check and optionally update your email address][email].

              If you're neither on the GitHub team nor have received an email, you're likely not automatically eligible.
              In this case you may consider [requesting an exception][exception].

            ''
        )
        + ''
          [automatically eligible]: ${repo}?tab=readme-ov-file#automatically-eligible-voters
          [team]: https://github.com/orgs/${org}/teams/voters-2024
          [email]: ${p ../doc/email.md}
          [exception]: ${p ../doc/exception-request.md}

          Members of the GitHub team can:

          - [Nominate] themselves or others
          - Endorse [unconfirmed nominees] that they'd like to be able to vote for.
          - [Ask questions][qna] to nominees

          [nominate]: ${p ../doc/nominate.md}
          [unconfirmed nominees]: ${repo}/pulls?q=is%3Apr+label%3Anomination+is%3Aopen
          [qna]: ${p ../doc/qna.md}

          ## Timeline

          - 2024-09-29 Sun: Deadline for nominations
          - 2024-10-01 Tue: Deadline for endorsements
          - 2024-10-03 Thu: Deadline for candidate questions
          - 2024-10-06 Sun: Deadline for candidate answers, submitting voter exceptions and updating voter emails
          - 2024-10-07 Mon: Voting starts
          - 2024-10-20 Sun: Voting ends
          - 2024-10-23 Wed: Results announced

          The results are expected to be announced just before [NixCon 2024](https://2024.nixcon.org/) in Berlin,
          which starts on 2024-10-25.
        '';

      discourse = builtins.toFile "discourse" (announcement false (throw "unused"));
      emailLoginExists = builtins.toFile "email-login-exists" (announcement true true);
      emailLoginMissing = builtins.toFile "email-login-missing" (announcement true false);
      email = pkgs.writeShellScript "sendEmails" ''
        PATH=${lib.makeBinPath [ pkgs.gnused pkgs.coreutils pkgs.jq pkgs.github-cli ]}
        set -euo pipefail

        if (( $# < 1 )); then
          echo "Usage: $0 DISCOURSE_POST_URL"
          exit 1
        fi
        discourseLink=$1

        tmp=$(mktemp -d)
        trap 'rm -rf "$tmp"' exit

        while read -r email id; do
          if [[ "$id" =~ @(.*) ]]; then
            cp --no-preserve=mode ${emailLoginMissing} "$tmp/mail.md"
            login=''${BASH_REMATCH[1]}
          else
            cp --no-preserve=mode ${emailLoginExists} "$tmp/mail.md"
            login=$(gh api /user/"$id" --cache=1000h --jq .login)
          fi
          sed -i \
            -e "s!@GITHUB_LOGIN@!$login!g" \
            -e "s!@DISCOURSE_LINK@!$discourseLink!g" \
            "$tmp/mail.md"
          echo "Sending an email to $email"
          ${sendEmail} "$email" "Kickoff" <"$tmp/mail.md"
        done < <(jq 'to_entries[] | "\(.key) \(.value)"' -r ${voters}/emails-to-github)
      '';

    in
    pkgs.runCommand "announcement" {
      nativeBuildInputs = [ pkgs.pandoc ];
    } ''
      mkdir -p $out
      pandoc -f gfm -t gfm --wrap=none ${discourse} -o $out/discourse.md
      ln -s ${email} $out/email.sh
    '';
}
