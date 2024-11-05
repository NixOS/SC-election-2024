{
  system ? builtins.currentSystem,
}:
let
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/352f9b286e9746847a66ab9d3ed927408e7ea746.tar.gz";
    sha256 = "0cz0jk3jgafhgszyzck0441xxd16k3mi9679bmhy6sz21rivbnmv";
  };
  pkgs = import nixpkgs {
    inherit system;
    config = { };
    overlays = [ ];
  };
in
rec {
  # All contributions by user
  data = import ./nix/data.nix { inherit pkgs; };

  # Contributions for a specific user
  contribsForUser = import ./nix/user-contribs.nix { inherit pkgs data; };

  # Plot to show the electorate size based on the commit cutoff
  plot = import ./nix/plot.nix { inherit pkgs data; };

  # A script to generate voters.json from the automatically eligible voters
  generateVoters = import ./nix/generate.nix { inherit pkgs data; };

  # Verifies the voters.json and returns a derivation with the emails/github ids
  voters = import ./nix/voters.nix { inherit pkgs; };

  verifyBallotMatch = import ./nix/verify-ballot-match.nix { inherit pkgs; };

  inherit pkgs;
}
