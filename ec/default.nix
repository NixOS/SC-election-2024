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
    repo + "/tree/main" + lib.removePrefix "." (lib.path.removePrefix ../. path);

  sendEmail = pkgs.writeShellScript "send-email.sh" (
    ''
      PATH=${
        lib.makeBinPath [
          pkgs.pandoc
          pkgs.msmtp
          pkgs.coreutils
          pkgs.glibc
        ]
      }
    ''
    + builtins.readFile ../scripts/send-email.sh
  );

  buildAnnouncement =
    { announcement, title }:
    let
      nowrap =
        name: text:
        pkgs.runCommand "${name}-nowrap"
          {
            source = text;
            passAsFile = [ "source" ];
            nativeBuildInputs = [ pkgs.pandoc ];
          }
          ''
            pandoc -f gfm -t gfm --wrap=none "$sourcePath" -o "$out"
          '';

    in
    {
      discourse = nowrap "discourse.md" (announcement "discourse" (throw "unused") (throw "unused"));
      github =
        { discourseLink }: nowrap "github.md" (announcement "github" (throw "unused") discourseLink);

      website =
        { discourseLink }:
        pkgs.writeText "website.md" (announcement "website" (throw "unused") discourseLink);

      email =
        { discourseLink }:
        let
          emailLoginExists = builtins.toFile "email-login-exists" (announcement "email" true discourseLink);
          emailLoginMissing = builtins.toFile "email-login-missing" (
            announcement "email" false discourseLink
          );

          single = pkgs.writeShellScript "sendSingle" ''
            set -euo pipefail
            to=$1

            githubInfo=$(jq -r --arg to "$to" '."\($to)"' ${voters}/emails-to-github)
            if [[ "$githubInfo" =~ @(.*) ]]; then
              file=${emailLoginMissing}
              login=''${BASH_REMATCH[1]}
            else
              file=${emailLoginExists}
              login=$(gh api /user/"$githubInfo" --cache=1000h --jq .login)
            fi

            sed -e "s/@GITHUB_LOGIN@/$login/g" "$file" |
              ${sendEmail} "$to" ${lib.escapeShellArg title}
          '';
        in
        pkgs.writeShellScript "sendEmails" ''
          PATH=${
            lib.makeBinPath [
              pkgs.gnused
              pkgs.coreutils
              pkgs.jq
              pkgs.github-cli
              pkgs.parallel
            ]
          }
          set -euo pipefail

          # TODO: Make sure interrupting parallel doesn't make it fail poorly
          # https://stackoverflow.com/questions/45147904/how-do-i-terminate-gnu-parallel-without-killing-running-jobs
          # https://stackoverflow.com/questions/24848843/how-do-i-stop-a-signal-from-killing-my-bash-script

          echo "Writing to jobs.log"

          parallelArgs=(
            # Show progress with a bar
            --bar
            # Halt as soon as 1 job failed, wait for the running jobs to finish
            --halt soon,fail=1
            # Store command results
            --joblog jobs.log
            # Only start a new job every second
            --delay 0.2
            # Run up to 10 jobs together
            -j10
            # Silence the citation message
            --will-cite
          )
          parallel "''${parallelArgs[@]}" "$@" ${single} <${voters}/emails.txt
        '';
    };
in
{

  kickoff = buildAnnouncement {
    title = "Nix Steering Committee Election 2024";
    announcement =
      platform: loginExists: discourseLink:
      lib.optionalString (platform == "github") ''
        > [!Note]
        > This pull request will be reused for future election notifications.

      ''
      + lib.optionalString (platform == "email" && loginExists) ''
        Hello, @@GITHUB_LOGIN@

      ''
      + ''
        As a first step towards a better governance for official Nix projects,
        we are happy to announce the kick-off of the [first Nix Steering Committee election][repo]!

        [repo]: ${repo}

        The Steering Committee will be the primary community leadership body, responsible for steering the official Nix projects --
        organisationally, socially, and technically.
        This includes making decisions over what is official, managing teams,
        approving NixOS Foundation policies relevant for the community,
        being the final escalation point, and more as [detailed in the Nix Governance Constitution][constitution].

        [constitution]: https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#steering-committee

        While the Steering Committee is given the authority to make decisions within the scope of its responsibilities directly,
        it is expected to delegate as much as possible.

      ''
      + lib.optionalString (platform != "discourse") ''
        Note that you can also read and publicly discuss this announcement [on Discourse][discourse].

        [discourse]: ${discourseLink}

      ''
      + ''
        ## Participating

      ''
      + {
        email =
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
          );
        github = ''
          If you got notified for this announcement,
          it means you're [automatically eligible] to vote
          and a member of the @NixOS/voters-2024 GitHub team.

          This pull request will also be used for
          further notifications relating to this election.

          If you didn't also receive an announcement email,
          make sure to [check and optionally update your email address][email].

        '';
      }
      .${platform} or ''
        [Automatically eligible] voters will be sent an email and be added/invited to the [@NixOS/voters-2024][team] GitHub team.
        If you're on the GitHub team but have not received an email, make sure to [check and optionally update your email address][email].

        If you're neither on the GitHub team nor have received an email, you're likely not automatically eligible.
        In this case you may consider [requesting an exception][exception].

      ''
      + ''
        [automatically eligible]: ${repo}?tab=readme-ov-file#automatically-eligible-voters
        [team]: https://github.com/orgs/${org}/teams/voters-2024
        [email]: ${p ../doc/email.md}
        [exception]: ${p ../doc/exception-request.md}

        Members of the GitHub team can:

        - [Nominate] themselves or others.
        - Endorse [unconfirmed nominees] that they'd like to be able to vote for.
        - [Ask questions][qna] to nominees as the primary way of engaging with them.

        [nominate]: ${p ../doc/nominate.md}
        [unconfirmed nominees]: ${repo}/pulls?q=is%3Apr+label%3Anomination+is%3Aopen
        [qna]: ${p ../doc/qna.md}

        ${
          if platform == "email" then
            ''
              If you have any questions or need support, please reply to this email or get in touch with the [Election Committee][ec] in other ways.
            ''
          else
            ''
              If you have any questions or need support, please get in touch with the [Election Committee][ec].
            ''
        }

        [ec]: https://github.com/nixos/SC-election-2024?tab=readme-ov-file#election-committee-ec

        ## Timeline

        - 2024-09-29 Sun: Deadline for nominations
        - 2024-10-01 Tue: Deadline for endorsements and candidate forms
        - 2024-10-03 Thu: Deadline for candidate questions
        - 2024-10-06 Sun: Deadline for candidate answers,
          submitting voter exceptions and updating voter email addresses
        - 2024-10-07 Mon: Voting starts
        - 2024-10-20 Sun: Voting ends
        - 2024-10-23 Wed: Results announced

        The results are expected to be announced just before [NixCon 2024](https://2024.nixcon.org/) in Berlin,
        which starts on 2024-10-25.
      '';
  };

  reminder1 = buildAnnouncement {
    title = "Reminder for the Nix Steering Committee Election 2024";
    announcement =
      platform: loginExists: discourseLink:
      (
        if platform != "discourse" then
          ''
            Recently we [kicked off] the first election for the Nix Steering Committee
            as a major step towards a renewal of project governance.

            [kicked off]: ${discourseLink}

          ''
        else
          ''
            Recently we kicked off the first election for the Nix Steering Committee
            as a major step towards a renewal of project governance.

          ''
      )
      + ''
        Since starting this election, we've had a lot of engagement
        in the [election repository][repo] with
        25 [nominees] being endorsed by more than 80 different people.

        [repo]: ${repo}
        [nominees]: ${repo}/pulls?q=is%3Apr+label%3Anomination

        We're now approaching the end of the nomination phase with some upcoming deadlines:

        - 2024-09-29 Sun: Deadline for [nominations][nominate].
        - 2024-10-01 Tue: Deadline for endorsements of [nominees without enough endorsements].
          You will not be able to vote for nominees that don't have sufficient endorsements.
        - 2024-10-03 Thu: Deadline for asking [questions to candidates][qna].
        - 2024-10-06 Sun: Deadline for submitting voter [exceptions][exception]
          and [updating voter email addresses][email].
          **You will not be able to vote if you cannot receive emails on the registered address.**

        Furthermore, if you're a nominee yourself:
        - 2024-10-01 Tue: Deadline for accepting the nomination and submitting the candidate form.
        - 2024-10-06 Sun: Deadline for [answering questions][qna] you'd like to answer.

        Following these dates, the final list of confirmed candidates
        along with their forms is expected to be published on 2024-10-04 Wed,
        while voting starts on 2024-10-07 Mon.

        [nominate]: ${p ../doc/nominate.md}
        [nominees without enough endorsements]: ${repo}/pulls?q=is%3Apr+is%3Aopen+label%3Anomination+-label%3A%22enough+endorsements%22+
        [qna]: ${p ../doc/qna.md}
        [exception]: ${p ../doc/exception-request.md}
        [email]: ${p ../doc/email.md}

        Note that deadlines are in [Anywhere on Earth] time,
        meaning submissions are still valid as long as it is
        still the given day anywhere on the planet
        (i.e. at the end of that day in UTC-12).

        [Anywhere on Earth]: https://en.wikipedia.org/wiki/Anywhere_on_Earth
      '';
  };
}
