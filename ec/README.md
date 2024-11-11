# How to be the EC

This document gives more-or-less complete docs on how the first EC ran this election.

## Ahead-of-time preparations

### For a GitHub org owner
- Create a new repository for the election
- Create an `ec-<YEAR>` team for the EC and give it admin access to the repository
- Ensure the existence of an election GitHub App, reusable for every election.
  To create it initially:
  - Have an org owner [create a new App](https://github.com/organizations/NixOS/settings/apps/new)
    - Title: Nix Elections
    - URL: https://nixos.org
    - Disable Webhooks
    - Permissions:
      - Repository Permissions > Pull Requests: Read and write
      - Repository Permissions > Issues: Read and write
      - Repository Permissions > Contents: Read and write
      - Organization Permissions > Members: Read and write
  - Ensure the App is installed on the org
  - Give the App access to the current election repository
  - Set the App ID as a new repository variable named `APP_ID`
  - Generate a private key for the App and set it as a new repository secret named `PRIVATE_KEY`

### For the admins of the `nixos.org` mailserver
- Set up `elections@nixos.org` as an alias for the EC members addresses.
  Could also be `election<YEAR>@nixos.org` going forward.
- Send the mail server, SMTP user and password to the EC members, potentially regenerating the password to revoke access to previous EC members
- Make sure that you have a good enough email setup for sending many emails

### For the Matrix admins
- Ensure that a public Matrix room for the elections is set up
- Make sure the EC has moderator permissions for the room

### For the EC
- Set the SMTP password as a new repository secret with key `SMTP_PASSWORD`
- Create a private room for the EC members to decide over things (Matrix or otherwise)
- In the repositories Moderation options, limit interactions to repository collaborators for the maximum possible duration (should be 6 months)
  - Note that anybody in the organisation can interact with the repository regardless, but CI will ask non-voters to abstain from doing so
- Set up branch protection for the repo
- Set up a GitHub team for the voters:
  - Create a team for the voters:
    - Name: Voters <YEAR>
    - Description: Voters for the <YEAR> Steering Committee election"
    - Team visibility: Visible
    - Team notifications: Enabled
  - Remove yourself as team maintainer, the automation will maintain the team
  - Add the voter team as a repository collaborator with the read role
    - This doesn't grant any extra access, because users in the organisation will be able to interact with the repository anyways
      However it does provide context to users when they get the team invite, letting them see which repository this team is related to.
  - Set the team's slug (should be `voters-<YEAR>`) as a new repository variable named `VOTER_TEAM`
- Ensure that a "nomination", "question" and "enough endorsements" label exists for the repository
- Initialise the repo from the previous election.

  **Important:** Before pushing, empty `voters.json` to prevent automation from inviting all those users already

  - Remove or empty `scripts/invited.txt` and `scripts/endorsersAsked.txt`
  - Remove `removed-voters-due-to-bounced-emails.json`
  - Remove `opavote_ballots.blt` and `civs_ballots.csv`
  - Empty `candidates`
  - Ensure the repo reflects the current version of the Nix Governance Constitution
  - Check that the voting platform is still functional and find an alternative otherwise
  - Grep for `TODO` in the repo and address it as necessary
  - Update the year
  - Update the EC contact info
  - Decide on the timeline and update it in the `README` and other places
- Pick a cut-off date and set it as `endEpoch` in [`config.nix`](../nix/config.nix).
  Set the `startEpoch` to 4 years before the `endEpoch`.

  Then prebuild the GitHub data and push it to a cache:
  ```
  nix-build -A data.prebuiltDerivations | cachix push nca
  ```

  This takes a lot of resources!
- Make a test run of everything and improve things as necessary.

  Note that if you test in a private repo, you should [enable private repo forking](https://docs.github.com/en/organizations/managing-organization-settings/managing-the-forking-policy-for-your-organization)
  and maybe [set the base organisation access](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/setting-base-permissions-for-an-organization) to None,
  because the GitHub App invites users to the organisation, which gives them access to all private repos by default.
- Create a retro document to write things down that could be improved for the future.

### For every EC member
- Make sure every EC member can send and receive emails from `elections@nixos.org`.
  If ImprovMX is still the Mail service used, follow [this tutorial](https://help.improvmx.com/improvmx-smtp-how-tos).

  Make sure to set the identity to "Nix Election Committee" or so
- Enable notifications for the public Matrix room
- Subscribe to all activity on the election repository

## Announcements

The [`ec/default.nix`](./default.nix) file contains code to automate announcements, able to take care of:
- Sending hundreds of personalised emails to voters.
- Ensuring proper formatting on GitHub and Discourse (where single newlines cause line breaks).
- Ease linking to repository files.
- Customise announcements based on the platform.

In general the workflow is always:
- Announce on Discourse with (`$NAME` is the name of the announcement, use auto-complete):
  ```
  nix-build ec -A $NAME.discourse
  ```

  Then post the contents of `result` to Discourse, potentially as a reply to a previous announcement.
- For more important announcements, post it to the website, linking to Discourse, with:
  ```
  nix-build ec -A $NAME.website --argstr discourseLink $DISCOURSE_LINK
  ```

  Then make a PR against [the website announcements](https://github.com/NixOS/nixos-homepage/tree/main/src/content/blog/announcements), ensuring that CI passes and ping somebody from the marketing team to merge it.
- Send emails to voters (needs `SMTP_PASSWORD` set):
  ```
  nix-build ec -A $NAME.email --argstr discourseLink $DISCOURSE_LINK
  ./result
  ```

  If 10 emails fail to send, it stops, but it can be resumed with
  ```
  ./result --resume
  ```

  You can view failed sends in `jobs.log`, but you might also get delayed (up to ~1 day) mail delivery failure responses.

  Reach out to people whose email bounced by pinging them on GitHub and optionally removing their email from the `voters.json` file.

- Announce it on GitHub:
  ```
  nix-build ec -A $NAME.github --argstr discourseLink $DISCOURSE_LINK
  ```

  Then post `./result` as a PR (or a reply to an existing PR) to the election repo,
  requesting a review from the voters GitHub team (which will ask you to explicitly confirm to send a notification to so many users).

  Lock the PR to only collaborators (with write access),
  so that only the EC can send further notifications using it.

  Then, remove the teams review request again, so that it doesn't stick around in users "to review" column without being able to review it (since it's locked)

## Kick-off
- Update the blocked users list:
  Have an org admin get the GitHub ids using
  ```
  gh api /orgs/NixOS/blocks --jq '.[].id'
  ```

  Then Insert them into [`config.nix`](../nix/config.nix).

  Don't update this once the voters are generated.
- Generate `voters.json` using
  ```
  nix-build -A generateVoters
  ./result
  ```
- [Announce](#announcements) it, `$NAME` is `kickoff`
- Push the generated `voters.json` to start triggering team additions
- Directly contact the users in `usersWithoutEmailAndGitHub.txt`

## Pre-voting phase

Process EC requests as documented in [`process.md`](./process.md) and keep the [timeline](../README.md#timeline) in mind throughout and send reminders throughout as described below.

### 2024-09-27 Fri: Nomination reminder

The weekend before the nomination deadline, do [the announcement](#announcements) with `$NAME` as `reminder1`.

### 2024-09-30 Mon: Reminder for nominees
- Open an issue [like this](https://github.com/NixOS/SC-election-2024/issues/103)
- Send emails to unconfirmed candidates using the various attributes under `unconfirmed`:
```
nix-build ec -A unconfirmed.needsToAccept
./result $GITHUB_HANDLE $NOMINATION_PR
nix-build ec -A unconfirmed.needsToSubmitFormAndNeedsMoreEndorsements
./result $GITHUB_HANDLE $NOMINATION_PR
nix-build ec -A unconfirmed.needsToSubmitForm
./result $GITHUB_HANDLE $NOMINATION_PR
nix-build ec -A unconfirmed.needsMoreEndorsements
./result $GITHUB_HANDLE $NOMINATION_PR
```
- Optionally PM the nominees via other means (e.g. Matrix) in case the above means fail.

### 2024-10-02 Wed: Candidate finalisation and reminder

- Close all PRs of candidates that didn't meet the criteria
  with a comment mentioning the unmet criteria.

- Decide with the EC on which (if any) candidates have a conflict of interest
  and update the source for `reminder2` with the result.

- Copy all candidate forms for confirmed candidates from the internal EC repo into this repo.

- Delete the internal EC repo.

- Send a reminder for the Q&A, updating voter emails and requesting exceptions, by doing an [announcement](#announcements) with `$NAME` as `reminder2`.

## Voting phase

- Push Q&A to candidate forms using [this script](./collect-questions.sh).
- Start an OpaVote election with:
  - Description:
    ```markdown
    In this election we choose 7 people for the first Nix Steering Committee. See the announcement for more information.

    You must cast your vote by 2024-11-03 23:59:59 Sun in Anywhere on Earth time, meaning as long as it is still the given day anywhere on the planet (i.e. at the end of that day in UTC-12). After the poll is closed, votes will not be accepted for any reason.

    Please inform yourself about the candidates by looking at their candidate info documents, which include:
    - Basic contact info
    - A conflict of interest disclosure
    - A statement on their motivation to be on the Steering Committee
    - All Q&A questions answered by the candidate, followed by ones not answered

    If you have a question, please contact the Election Committee.

    TODO: Token timeout
    ```
  - Enable automatic reminders (note that you can update the reminder text over time).
  - If you intend to use OpaVote to tally the results, pick an appropriate method and number of winners, otherwise pick any method and the same number of winners as candidates.
  - Add all the voters by building `nix-build -A voters` and uploading `result/emails.txt`.
- Send the [announcement](#announcements) with `$NAME` as (`voteStart`, `corruption`, `restart`)
- Turn off the [Auto-merge update email PR workflow](../.github/workflows/update-email.yml), because EC members will need to manually add emails to OpaVote when merging a PR from now on.

### Final voting reminder

Send a final voting reminder like [this](https://github.com/NixOS/SC-election-2024/pull/85#issuecomment-2453158340) to voters using GitHub and Discourse.

## Post-voting phase

- Close the OpaVote poll and download the ballots, storing them under [`opavote_ballots.blt`](../opavote_ballots.blt).
- Run `nix-build -A verifyBallotMatch` to generate `result/civs_ballots.txt`
- Create a new CIVS poll, making sure to check:
  - [x] Make this a test poll: read all votes from a file.
  - [x] Enable detailed ballot reporting"
  - [x] Enforce proportional representation (rank of their favorite choice)
- Close the CIVS poll to get the result
- Download the CIVS ballots from `https://civs1.civs.us/cgi-bin/download_ballots.pl?id=$POLL_ID`, store it in the repo as `civs_ballots.csv`
- Update the verification docs [here](../doc/verify.md).
- Post the [announcement](#announcements) with `$NAME` as `result`.
- Do final cleanups of this repository and archive it.

### In case of CoIs among candidates

The 2024 election didn't have any CoIs among candidates, but if future elections do, here's some notes:
- Next to the candidate names, indicate other people they conflict with.
  When looking at election results, this allows voters to easily spot when two conflicting people would be elected and know that one of them will be disqualified.
- The description of the election should point out that the result of the election might not be correct depending on the conflicts.
- Remove the candidate with the least votes from the CIVS ballots and create a new test poll with the changed ballots
- Note that OpaVote also charges for recounts of ballots
