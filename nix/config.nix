{
  # date -u --date='2020-05-01' +%s
  startEpoch = 1588291200;
  # date -u --date='2024-05-01' +%s
  endEpoch = 1714521600;

  # https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md?plain=1#L136
  exclusions = [
    ## bots
    # nixpkgs-merge-bot[bot]
    148217876
    # dependabot[bot]
    49699333
    # bors[bot]
    26634292
    # StridBot
    26647207
    # mergify[bot]
    37929162
    # github-actions[bot]
    41898282
    # r-ryantm
    37933096

    ## banned users
    # TODO: Integrate with `gh api /orgs/NixOS/blocks`
    170602754
    170597457
    122415033
    78925721
    61781343
    44329446
    35755639
    34454443
    3998
    30756411
    20419453
    16732294
    12958815
    7961110
    7673602
    7548295
    4350451
    1839166
    149484
    11302521
  ];
}
