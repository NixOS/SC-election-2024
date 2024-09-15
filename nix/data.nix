{ pkgs }:
let
  inherit (pkgs) lib;
  inherit (import ./config.nix) startEpoch endEpoch exclusions;
  inherit
    (import (fetchTarball {
      url = "https://github.com/balsoft/Flockenzeit/archive/90abba65671690d95b5d28ce6dd8de7959aa1339.tar.gz";
      sha256 = "0a5lqpy7zmjvzbadsz14vb05as1v9acdgkgjqq8qf0c9x25id4pv";
    }))
    splitSecondsSinceEpoch
    pad0
    ;

  daySeconds = 24 * 60 * 60;

  days = lib.genList (
    d:
    let
      epoch = startEpoch + d * daySeconds;
      today = splitSecondsSinceEpoch { } epoch;
      tomorrow = splitSecondsSinceEpoch { } (epoch + daySeconds);
    in
    {
      day = today.d;
      startMonth = "${toString today.Y}-${pad0 2 today.m}";
      endMonth = "${toString tomorrow.Y}-${pad0 2 tomorrow.m}";
    }
  ) ((endEpoch - startEpoch) / daySeconds);

  monthlyHashInfo = lib.mapAttrs (
    startMonth: days:
    let
      endMonth = (lib.last days).endMonth;
    in
    assert startMonth != endMonth;
    {
      name = "github-archive-hashes-${startMonth}";
      url = "https://storage.googleapis.com/storage/v1/b/data.gharchive.org/o?startOffset=${startMonth}-01-0.json.gz&endOffset=${endMonth}-01-0.json.gz";
      hashFile = ./gharchive-hashes/${startMonth}.sha256;
    }
  ) (lib.groupBy (d: d.startMonth) days);

  prefetchScript = pkgs.writeShellScript "gharchive-hashes" ''
    ${lib.concatStringsSep "\n" (
      lib.mapAttrsToList (month: info: ''
        file=${lib.escapeShellArg info.hashFile}
        if [[ ! -f "$file" ]]; then
          mkdir -p "$(dirname ${lib.escapeShellArg info.hashFile})"
          nix-prefetch-url ${lib.escapeShellArg info.url} --name ${lib.escapeShellArg info.name} > ${lib.escapeShellArg info.hashFile}
        fi
      '') monthlyHashInfo
    )}
  '';

  hourlyData = lib.listToAttrs (
    lib.concatLists (
      lib.mapAttrsToList (
        month: info:
        let
          objectsInfoDrv = pkgs.fetchurl {
            name = info.name;
            url = info.url;
            hash = "sha256:" + lib.fileContents info.hashFile;
          };
          objectsInfo = builtins.fromJSON (builtins.readFile objectsInfoDrv);

          hourly =
            # The Google Cloud storage API only returns at most 1000 results, but we fetch monthly,
            # so this should always be below that limit (31 * 24 = 744), but let's make sure
            assert !objectsInfo ? nextPageToken;
            lib.map (
              object:
              let
                matched = builtins.match "(.*)-(.*)-(.*)-(.*)\.json\.gz" object.name;
                day = lib.toIntBase10 (lib.elemAt matched 2);
                hour = lib.toIntBase10 (lib.elemAt matched 3);
              in
              {
                name = "${month}-${pad0 2 day}-${pad0 2 hour}";
                value = pkgs.fetchurl {
                  name = "github-archive-${object.name}";
                  url = "https://data.gharchive.org/${object.name}";
                  hash = "md5:${object.md5Hash}";
                  curlOptsList = [
                    # Got this error once, which blocked progress:
                    #   curl: (92) HTTP/2 stream 1 was not closed cleanly: INTERNAL_ERROR (err 2)
                    # Hopefully this option fixes it
                    "--retry-all-errors"
                  ];
                };
              }
            ) objectsInfo.items;

        in
        if builtins.pathExists info.hashFile then
          hourly
        else
          throw "Please run ${prefetchScript} to get the gharchive hashes"
      ) monthlyHashInfo
    )
  );

  warnMissingHours =
    let
      hours24 = map toString (lib.range 0 23);

      allHours = lib.concatMap (
        day: map (hour: "${day.startMonth}-${pad0 2 day.day}-${pad0 2 hour}") hours24
      ) days;

      processHour =
        acc: hour:
        if hourlyData ? ${hour} then
          if acc ? partial then
            {
              ranges = acc.ranges ++ [ acc.partial ];
              count = acc.count;
            }
          else
            acc
        else
          {
            count = acc.count + 1;
            ranges = acc.ranges;
            partial =
              if acc ? partial then
                {
                  from = acc.partial.from;
                  to = hour;
                  count = acc.partial.count + 1;
                }
              else
                {
                  from = hour;
                  to = hour;
                  count = 1;
                };
          };

      folded = lib.foldl' processHour {
        ranges = [ ];
        count = 0;
      } allHours;

      percentage = 100.0 / lib.length allHours * folded.count;
      ranges = folded.ranges ++ lib.optional (folded ? partial) folded.partial;
    in
    lib.warnIf (folded.count > 0) ''
      The data for ${toString folded.count} hours (${toString percentage}%) is entirely missing:
      ${lib.concatMapStringsSep "\n" (
        range: "- ${range.from} - ${range.to} (${toString range.count} hours)"
      ) ranges}'' lib.id;

  dailyNixosData =
    warnMissingHours lib.flip lib.mapAttrs
      (lib.groupBy (hour: lib.concatStringsSep "-" (lib.take 3 (lib.splitString "-" hour))) (
        lib.attrNames hourlyData
      ))
      (
        day: hours:
        pkgs.runCommandNoCC "github-archive-NixOS-${day}"
          {
            nativeBuildInputs = [ pkgs.jq ];
            # This needs a beefy machine.. uncomment this when this needs to be rebuilt
            # requiredSystemFeatures = [ "beefy" ];
            # This needs like 1TB per year, which I don't want to burden remote builders with, which have a harder time GCing
            preferLocalBuild = true;
          }
          (
            # Ideally we'd always use this branch, but this would be rather wasteful, because everything would need to be rebuilt
            if lib.hasPrefix "2020-10" day || lib.hasPrefix "2021-09" day then
              lib.concatMapStringsSep "\n" (
                hour:
                ''
                  echo "Processing ${hour}" >&2
                ''
                + lib.optionalString (hour == "2020-10-30-17" || hour == "2021-09-11-09") (
                  lib.warn "The data for ${hour} is partially corrupt, some events are missing" ''
                    # Ensure that we don't fail with the corrupted JSON
                    # https://github.com/igrigorik/gharchive.org/issues/241
                    # https://github.com/igrigorik/gharchive.org/issues/271
                    echo -e "\e[31mwarning: Ignoring errors for this hour because it's corrupted\e[0m" >&2
                    set +e
                  ''
                )
                + ''
                  gzip -cd ${hourlyData.${hour}} |
                    # https://github.com/igrigorik/gharchive.org/issues/190
                    tr -s '\0' '\n' |
                    jq -c 'select(.repo.name | startswith("NixOS/"))' \
                    >> $out
                  set -e
                ''
              ) hours
            else
              ''
                {
                  ${
                    lib.concatMapStringsSep "\n" (hour: ''
                      echo "Processing ${hour}" >&2
                      gzip -cd ${hourlyData.${hour}}
                    '') hours
                  }
                } |
                  # https://github.com/igrigorik/gharchive.org/issues/190
                  tr -s '\0' '\n' |
                  jq -c 'select(.repo.name | startswith("NixOS/"))' \
                  > $out
              ''
          )
      );

  monthlyNixosData =
    lib.flip lib.mapAttrs
      (lib.groupBy (hour: lib.concatStringsSep "-" (lib.take 2 (lib.splitString "-" hour))) (
        lib.attrNames dailyNixosData
      ))
      (
        month: days:
        pkgs.runCommandNoCC "github-archive-NixOS-${month}.gz" { } ''
          gzip -c ${lib.escapeShellArgs (map (day: dailyNixosData.${day}) days)} > $out
        ''
      );

  monthlyPrs = lib.mapAttrs (
    month: data:
    pkgs.runCommandNoCC "NixOS-prs-${month}"
      {
        nativeBuildInputs = [ pkgs.jq ];
        jqScript = # jq
          ''
            select(
              # It's a PR event
              .type == "PullRequestEvent"
              # This PR was merged
              and .payload.action == "closed" and .payload.pull_request.merged
            ).payload.pull_request |
              pick(.merged_at, .commits, .user.id, .user.login, .merged_by.id, .merged_by.login, .html_url)
          '';
        passAsFile = [ "jqScript" ];
      }
      ''
        echo "Processing ${month}" >&2
        gzip -cd ${data} | jq -cf "$jqScriptPath" >> $out
      ''
  ) monthlyNixosData;

  allPrs = pkgs.concatText "NixOS-prs" (lib.attrValues monthlyPrs);
in
lib.warn
  "The data comes from https://gharchive.org, which is missing some events in general, see https://github.com/igrigorik/gharchive.org/issues/294"
  pkgs.runCommandNoCC
  "contribs-by-user"
  {
    nativeBuildInputs = [ pkgs.jq ];
    passAsFile = [
      "contributorsJq"
      "exclusions"
    ];
    # These should be cached, because they're dependencies are very expensive to build
    passthru.prebuiltDerivations = lib.attrValues monthlyNixosData;
    contributorsJq = # jq
      ''
        map(
          (.id = .user.id | .login = .user.login | .type = "author") ,
          (.id = .merged_by.id | .login = .merged_by.login | .type = "merger") |
          del(.user, .merged_by)
        ) |
        group_by(.id) |
        .[] |
        .[0].id as $id |
        if $exclusions[0] | contains([$id]) then
          empty
        else
          map(select(.type == "author") | del(.type, .id)) as $authored |
          map(select(.type == "merger") | del(.type, .id)) as $merged |
          (map(.login) | unique) as $logins |
          {
            id: $id,
            logins: $logins,
            contributions: {
              authored_commit_count: (($authored | map(.commits) | add) // 0),
              is_merger: ($merged != []),
              authored: $authored,
              merged: $merged
            }
          }
        end
      '';
    exclusions = builtins.toJSON exclusions;
  }
  # bash
  ''
    jq -sf "$contributorsJqPath" --slurpfile exclusions "$exclusionsPath" ${allPrs} > $out
  ''
