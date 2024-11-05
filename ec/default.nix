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

  mdToHtml = md: pkgs.runCommand "html" {
    nativeBuildInputs = [ pkgs.pandoc ];
    passAsFile = [ "md" ];
    inherit md;
  } ''
    pandoc -f gfm -t html "$mdPath" -o $out
  '';

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
        { discourseLink ? throw "discourseLink: unused" }: nowrap "github.md" (announcement "github" (throw "unused") discourseLink);

      website =
        { discourseLink ? throw "discourseLink: unused" }:
        pkgs.writeText "website.md" (announcement "website" (throw "unused") discourseLink);

      email =
        { discourseLink ? throw "discourseLink: unused" }:
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
            --halt soon,fail=10
            # Store command results
            --joblog jobs.log
            # Only start a new job every second
            --delay 0.1
            # Run up to 10 jobs together
            -j20
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

  unconfirmed =
    let
      make = title: content:
        let
          contentFile = builtins.toFile "content" content;
        in
        pkgs.writeShellScript "send" ''
          set -euo pipefail
          login=$1
          pr=$2
          id=$(gh api /users/"$login" --cache=1000h --jq .id)
          to=$(jq -r --argjson id "$id" 'with_entries(select(.value == $id)) | keys[]' ${../voters.json})

          sed -e "s/@GITHUB_LOGIN@/$login/g" -e "s!@NOMINATION@!$pr!g" "${contentFile}" |
            ${sendEmail} "$to" ${lib.escapeShellArg title}
        '';
    in {
      needsToAccept = make "Nix SC Election 2024: Tuesday deadline to accept your nomination" ''
        Hello, @@GITHUB_LOGIN@

        You've [been nominated][nomination] for the Nix Steering Committee,
        and have received enough endorsements to be able to run,
        but have neither confirmed nor rejected your candidacy.

        [nomination]: @NOMINATION@

        If you'd like to run for the Nix Steering Committee,
        please accept the nomination **until this Tuesday** by:
        - Posting a comment indicating so in the [nomination PR][nomination].
        - Replying to this email with the filled-out candidate template below.
          This will be published and linked on the ballot.

        You've also been reminded of this [on GitHub][issue].

        [issue]: https://github.com/NixOS/SC-election-2024/issues/103

        If you're not interested, you can ignore this email.

        ---

        ${builtins.readFile ../doc/candidate-template.md}
      '';
      needsToSubmitFormAndNeedsMoreEndorsements = make "Nix SC Election 2024: Tuesday deadline to meet candidate criteria" ''
        Hello, @@GITHUB_LOGIN@

        To confirm [your nomination][nomination] for the Nix Steering Committee,
        you need the following **until this Tuesday**:
        - Reply to this email with the filled-out candidate template below.
          This will be published and linked on the ballot.
        - Get more [eligible voters] to endorse you in your [nomination PR][nomination].

        [nomination]: @NOMINATION@
        [eligible voters]: ${repo}?tab=readme-ov-file#eligible-voters

        You've also been reminded of this [on GitHub][issue].

        [issue]: https://github.com/NixOS/SC-election-2024/issues/103

        ---

        ${builtins.readFile ../doc/candidate-template.md}
      '';
      needsToSubmitForm = make "Nix SC Election 2024: Tuesday deadline to submit candidate form" ''
        Hello, @@GITHUB_LOGIN@

        To confirm [your nomination][nomination] for the Nix Steering Committee,
        you need to reply to this email with the filled-out candidate template below
        **until this Tuesday**. This will be published and linked on the ballot.

        [nomination]: @NOMINATION@

        You've also been reminded of this [on GitHub][issue].

        [issue]: https://github.com/NixOS/SC-election-2024/issues/103

        ---

        ${builtins.readFile ../doc/candidate-template.md}
      '';
      needsMoreEndorsements = make "Nix SC Election 2024: Tuesday deadline to get enough endorsements" ''
        Hello, @@GITHUB_LOGIN@

        To confirm [your nomination][nomination] for the Nix Steering Committee,
        you need to get more [eligible voters] to endorse you in
        your [nomination PR][nomination] **until this Tuesday**.

        [nomination]: @NOMINATION@
        [eligible voters]: ${repo}?tab=readme-ov-file#eligible-voters

        You've also been reminded of this [on GitHub][issue].

        [issue]: https://github.com/NixOS/SC-election-2024/issues/103
      '';
    };

  reminder2 = buildAnnouncement {
    title = "Reminder for the Nix Steering Committee Election 2024";
    announcement =
      platform: loginExists: discourseLink:
      ''
        We've now reached the end of the nomination phase, ending up with 25 confirmed candidates!

        All candidate forms have now been published together:

        ${repo}/tree/main/candidates

        We're also confirming that there are no same conflicts of interests
        among the candidates, meaning that there will be no further need to take
        the [constitutional conflict of interest restrictions][cois] into account.

        [cois]: https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#conflict-of-interest-coi-balance 

        ### Candidate Q&A deadline

        Until **this Thursday**, eligible voters can still
        [ask questions][ask] to candidates, and are encouraged to do so.
        Note that questions can also be based on the candidates forms.

        [ask]: https://github.com/NixOS/SC-election-2024/blob/main/doc/qna.md#if-you-want-to-ask-a-question

        Until **this Sunday**, candidates can [answer questions][answer] they'd like to answer.

        [answer]: https://github.com/NixOS/SC-election-2024/blob/main/doc/qna.md#if-you-are-a-candidatenominee-and-want-to-answer-questions

        ${
          if platform == "discourse" then
            ''
              ### Voter exceptions deadline

              Until **this Sunday**, [voter exceptions][exceptions] can be requested
              if you're not already an [eligible voter][eligible].

              [exceptions]: ${p ../doc/exception-request.md}
              [eligible]: ${repo}/tree/main?tab=readme-ov-file#eligible-voters

            ''
          else
            ''
              ### Email update deadline

              Until **this Sunday** you can [check and optionally update your email address][email].
              **You will not be able to vote if you cannot receive emails on the registered address**.

              [email]: ${p ../doc/email.md}

            ''
        }
        The voting phase **starts on Monday** and will last for
        almost 2 weeks until 2024-10-20 Sun.
      '';
  };

  civs = {
    description = mdToHtml ''
      In this election we choose 7 people for the first Nix Steering Committee.
      See [the announcement](https://discourse.nixos.org/t/nix-steering-committee-election-2024/52232) for more information.

      Please inform yourself about the candidates by looking at [their candidate info documents](${p ../candidates}), which include:
      - Basic contact info
      - A conflict of interest disclosure
      - A statement on their motivation to be on the Steering Committee
      - All Q&A questions answered by the candidate, followed by ones not answered
      
      Each candidate's individual info document is also linked on the ballot below.

      If you have a question, please contact the [Election Committee](${repo}?tab=readme-ov-file#election-committee-ec).
    '';

    candidates = pkgs.writeScript "candidates.sh" /* bash */ ''
      cd ${../candidates}
      for file in *.md; do
        handle=''${file%%.md}
        user=$(gh api "/users/$handle")
        handle=$(jq -r .login <<< "$user")
        id=$(jq -r .id <<< "$user")
        echo "<img src=\"https://avatars.githubusercontent.com/u/$id\" width=\"25\" height=\"25\"> $handle (<a href=\"${repo}/blob/main/candidates/$file\">candidate info</a>)"
      done
    '';
  };

  voteStart = buildAnnouncement {
    title = "Voting starts for the Nix Steering Committee Election 2024";
    announcement =
      platform: loginExists: discourseLink:
      ''
        Candidates for the first Nix Steering Committee have now been selected,
        and the voting phase of the election has begun.
        The [list of voters][voters] is now final,
        and the deadline for exception requests and updating emails has passed.

        [voters]: https://github.com/NixOS/SC-election-2024/blob/main/voters.json

        **You must cast your vote by 2024-10-20 Sun** in
        [Anywhere on Earth time](https://en.wikipedia.org/wiki/Anywhere_on_Earth),
        meaning as long as it is still the given day anywhere on the planet
        (i.e. at the end of that day in UTC-12).
        After the poll is closed, votes will not be accepted for any reason.

        We will send a reminder to vote on 2024-10-18 Fri.

        ### The Candidates

        Please inform yourself about the candidates by looking at their
        [candidate info documents][candidates], which include:

        [candidates]: https://github.com/NixOS/SC-election-2024/tree/main/candidates

        - Basic contact info
        - A conflict of interest disclosure
        - A statement on their motivation to be on the Steering Committee
        - All Q&A questions answered by the candidate, followed by ones not answered

        Each candidate's individual info document is also linked on the ballot.

        ### How to vote

        To be able to vote, you need to activate your email in the
        [`voters.json` file][voters]
        with CIVS by following the steps on the
        [CIVS Activate User page](https://civs1.civs.us/cgi-bin/opt_in.pl).

        If you already did so, you should've already received an email
        from <civs@cornell.edu> with a link to the poll.

        If you're only activating your email now, you will get a link to
        the poll in the activation page under "Pending poll invitations".
        If you missed this, you can go through the email activation again.

        If you have a question, please contact the [Election Committee][ec].

        [ec]: https://github.com/nixos/SC-election-2024?tab=readme-ov-file#election-committee-ec
      '';
  };

  corruption = buildAnnouncement {
    title = "Nix SC Election 2024: CIVS poll corruption";
    announcement =
      platform: loginExists: discourseLink:
      ''
        Unfortunately the CIVS poll we used for the election got corrupted
        due to technical issues out of our control.
        A symptom of the problem is that the system appears to
        allow voters to vote multiple times.
        As such we are invalidating the existing poll,
        please hold off voting for a new future poll instead.
        Already submitted ballots appear to be irrecoverable.
        We apologise for the inconvenience.

        According to the CIVS admin,
        a data corruption like that has never been seen before.
        The [CIVS FAQ][faq][^1] implies this to be
        first time data has been lost since 2006.
        As far as we understand, the Berkley DB files got corrupted
        in such a way that at least the table of the voters who have voted
        is not handled correctly anymore.

        [faq]: https://civs1.civs.us/faq.html
        [^1]: [Archive link](http://web.archive.org/web/20240926133351/https://civs1.civs.us/faq.html)

        We have no insight into the CIVS server,
        but are in contact with the admin to try figure out
        what went went wrong in more detail and how to best proceed.
        We will follow up with another announcement no later than this Friday.

        ## Email updates possible again for now

        As a consequence of the above,
        we can again allow email updates until the new poll is started.
        To do so, follow [these steps][email].

        [email]: ${p ../doc/email.md}

        ## The candidates

        You can also still prepare yourself to vote by looking at the [candidates].

        [candidates]: ${p ../candidates}
      '';
  };

  restart = buildAnnouncement {
    title = throw "unused";
    announcement =
      platform: loginExists: discourseLink:
      ''
        Because we don't have sufficient confidence in the CIVS problem not reoccurring again, we have decided to use [OpaVote](https://opavote.com/) to collect the ballots instead. We're still going to use CIVS tallying of the results, so that they won't get influenced based on how ballots are collected. Note that OpaVote (like CIVS) allows the voters to get an anonymised list of all the ballots cast, and we will enable this after the election.

        Unlike CIVS, OpaVote doesn't require a separate activation step for emails, so all eligible voters with email addresses considered valid will be sent emails with the voting link from <noreply@opavote.com>, as well as voting reminders every 3 days.

        **You must cast your vote by 2024-11-03 23:59:59 Sun** in [Anywhere on Earth time](https://en.wikipedia.org/wiki/Anywhere_on_Earth), meaning as long as it is still the given day anywhere on the planet (i.e. at the end of that day in UTC-12). After the poll is closed, votes will not be accepted for any reason.

        _Note that, unlike CIVS, OpaVote **does not** allow to correct your ballot once cast! Furthermore, you cannot rank two candidates the same, except for unranked candidates. We will treat all the unranked candidates as tied for the last place when tallying._

        ## Removed email addresses and how to set them

        Because [OpaVote's terms](https://opavote.com/terms) has potential sanctions for undeliverable emails and doesn't have a separate email activation step like CIVS, we have [removed](https://github.com/NixOS/SC-election-2024/commit/928be359ebbabc7ddad1457e0a63981695247685) some voter email addresses that couldn't be reached.

        We cannot change the voter emails where the voting link has been delivered, but for missing and bouncing addresses, users can still [update their email address](https://github.com/nix-constitutional-assembly-2024/SC-election-2024/blob/main/doc/email.md). Everybody without an email address in `voters.json` will be notified once more.
      '';
  };

  result = buildAnnouncement {
    title = "Results for the Nix Steering Committee Election 2024";
    announcement =
      platform: loginExists: discourseLink:
      ''
        After successfully tallying the 450 ballots cast (56% turnout) using CIVS,
        We are hereby concluding this election!
        We congratulate the first members of the Nix Steering Committee (SC) (ordered alphabetically):
        - [@Ericson2314] (2 year term)
        - [@fpletz] (1 year term)
        - [@Gabriella439] (2 year term)
        - [@jtojnar] (2 year term)
        - [@roberth] (2 year term)
        - [@tomberek] (1 year term)
        - [@winterqt] (1 year term)

        [@Ericson2314]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/Ericson2314.md
        [@fpletz]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/fpletz.md
        [@Gabriella439]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/Gabriella439.md
        [@jtojnar]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/jtojnar.md
        [@roberth]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/roberth.md
        [@tomberek]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/tomberek.md
        [@winterqt]: https://github.com/NixOS/SC-election-2024/blob/main/candidates/winterqt.md

        This result is certified by all [Election Committee][ec] members.

        [ec]: https://github.com/nixos/SC-election-2024?tab=readme-ov-file#election-committee-ec

        For verification purposes,
        all OpaVote ballots will soon be available [here][opavote]
        (the result there should be ignored; voters will also get an email),
        while the CIVS tally to determine the result using the same ballots
        is already available [here][civs].
        See [the new docs][verify] for more info on result verification.

        [opavote]: https://opavote.com/results/6251213851459584
        [civs]: https://civs1.civs.us/cgi-bin/results.pl?id=E_8589ef69d0e60845
        [verify]: ${p ../doc/verify.md}

        We are now establishing communications with the first SC members
        and will soon make a final handover announcement on behalf of the EC / NCA.

        We, the members of the EC / NCA, and @ron from the NixOS Foundation board,
        are thankful for everybody's participation in this first election,
        and are looking forward to see the first SC getting started.

      '' + lib.optionalString (platform != "discourse") ''
        Note that you can also read and publicly discuss this announcement [on Discourse][discourse].

        [discourse]: ${discourseLink}
      '';
  };
}
