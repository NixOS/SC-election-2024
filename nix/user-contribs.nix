{ pkgs, data }:
{ id }:
assert pkgs.lib.isInt id;
pkgs.runCommand "contribs-${toString id}.json" { nativeBuildInputs = [ pkgs.jq ]; } ''
  jq --argjson id ${toString id} 'select(.id == $id).contributions' ${data} > $out
''
