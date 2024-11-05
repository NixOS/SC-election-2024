{ pkgs }:
pkgs.runCommand "verify-ballot-match" {
  src = pkgs.lib.fileset.toSource {
    root = ../.;
    fileset = pkgs.lib.fileset.unions [
      ./process.sh
      ../civs_ballots.csv
      ../opavote_ballots.blt
    ];
  };
} ''
  unpackPhase
  cd "$sourceRoot"
  patchShebangs .
  export PATH=${pkgs.lib.makeBinPath [ pkgs.bc pkgs.coreutils pkgs.diffutils ]}

  mkdir $out
  nix/process.sh < ./opavote_ballots.blt > $out/civs_ballots.txt
  diff <(tail -n+2 civs_ballots.csv | sort -n) <(tail -n+2 $out/civs_ballots.txt)
''
