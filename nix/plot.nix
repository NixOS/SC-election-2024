{ pkgs, data }:
let
  cumulativeCounts =
    pkgs.runCommandNoCC "cumulative-counts"
      {
        passAsFile = [ "jq" ];
        nativeBuildInputs = [ pkgs.jq ];
        jq = # jq
          ''
            map(.contributions.authored_commit_count | select(. != 0)) |
            add as $total |
            group_by(.) |
            map({ minimum: .[0], commits: add, size: length }) |
            sort_by(-.minimum) |
            [
              foreach .[] as $entry (
                { cumulative_commits: 0, cumulative_size: 0 };
                {
                  cumulative_commits: (.cumulative_commits + $entry.commits),
                  cumulative_size: (.cumulative_size + $entry.size),
                };
                {
                  minimum: $entry.minimum,
                  electorate_size: .cumulative_size,
                  percent_commits: (100 / $total * .cumulative_commits)
                }
              )
            ]
          '';
      }
      ''
        jq -csf "$jqPath" ${data} > $out
      '';

in
pkgs.runCommandNoCC "plot"
  {
    nativeBuildInputs = [ pkgs.nodePackages.vega-lite ];
    passAsFile = [ "plot" ];
    plot = builtins.toJSON {
      "$schema" = "https://vega.github.io/schema/vega-lite/v5.json";
      data.url = "data.json";
      vconcat = [
        {
          height = 250;
          width = 600;
          mark.type = "line";
          mark.color = "#85A9C5";
          encoding = {
            x = {
              field = "minimum";
              title = "Commit Count Requirement";
              type = "quantitative";
              scale.type = "log";
            };
            y = {
              field = "electorate_size";
              title = "Electorate Size";
              type = "quantitative";
              scale.type = "log";
              axis.titleColor = "#85A9C5";
            };
          };
        }
        {
          height = 250;
          width = 600;
          mark.type = "line";
          mark.color = "#85C5A6";
          encoding = {
            x = {
              field = "minimum";
              title = "Commit Count Requirement";
              type = "quantitative";
              scale.type = "log";
            };
            y = {
              field = "percent_commits";
              title = "% of Commits Counted";
              type = "quantitative";
              axis.titleColor = "#85C5A6";
              axis.tickCount = 10;
            };
          };
        }
      ];
    };
  }
  ''
    ln -s ${cumulativeCounts} data.json
    mkdir $out
    vl2svg "$plotPath" > $out/plot.svg
    vl2png -s 5 "$plotPath" > $out/plot.png
  ''
