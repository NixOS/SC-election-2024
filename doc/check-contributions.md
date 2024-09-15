# How to check your GitHub contributions

The list of [automatically eligible voters](../README.md#automatically-eligible-voters) was determined reproducibly using Nix.

Intermediate results take a lot of resources:
About 4TB download and Nix store space and about 10 single-core days to process.

For verification purposes you are encouraged to run this yourself.
However we are also providing prebuilt results, which you can make available using

```
nix-shell -p cachix

cachix use nca
```

To see your contributions that were taken into account,
run the following from the root of this repository:

```
nix-shell -p github-cli

nix-build -A contribsForUser \
  --arg id "$(gh api /user --jq .id)"
```
