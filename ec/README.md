# How to be the EC

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
- Set up `elections@nixos.org` as an alias for the EC members addresses
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

  - Remove or empty `scripts/invited.txt`
  - Remove `usersWithoutEmailAndGitHub.txt`
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

## Kick-off
- Update the blocked users list:
  Get the GitHub ids using
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
- Announce it to discourse:
  ```
  nix-build ec -A kickoff.discourse
  ```

  Then post the contents of `result` to Discourse
- Announce it on the website, linking to discourse:
  ```
  nix-build ec -A kickoff.website --argstr discourseLink $DISCOURSE_LINK
  ```

  Then make a PR against [the website announcements](https://github.com/NixOS/nixos-homepage/tree/main/src/content/blog/announcements) and ping somebody from the marketing team to merge it.
- Push the generated `voters.json` to start triggering team additions
- Send the emails (needs `SMTP_PASSWORD` set):
  ```
  nix-build ec -A kickoff.email --argstr discourseLink $DISCOURSE_LINK
  ./result
  ```

  If any fail to send, resume using
  ```
  ./result --resume
  ```

  You can view failed sends in `jobs.log`, but you might also get mail delivery failure responses.
- Announce it on GitHub:

  Wait until both:
  - All automatically eligible voters have been invited to the team
  - All emails are sent

  ```
  nix-build ec -A kickoff.github --argstr discourseLink $DISCOURSE_LINK
  ```

  Then post `./result` as a PR to the election repo,
  requesting a review from the voters GitHub team.

  Lock the PR to only collaborators (with write access),
  so that only the EC can send further notifications using it.

- Directly contact the users in `usersWithoutEmailAndGitHub.txt`

## Pre-voting phase

- See [this process](./process.md)
- Organise the Q&A

## 2024-09-27 Fri: Nomination reminder

Before the weekend with the nomination deadline, send a reminder:

- On discourse:
  ```
  nix-build ec -A reminder1.discourse
  ```

  Then post the contents of `result` to Discourse
  in the same thread as the original kickoff announcement.
- On GitHub:

  ```
  nix-build ec -A reminder1.github --argstr discourseLink $DISCOURSE_LINK
  ```

  Then post `./result` into the same PR as the original announcement.
- Via email (needs `SMTP_PASSWORD` set):
  ```
  nix-build ec -A reminder1.email --argstr discourseLink $DISCOURSE_LINK
  ./result
  ```

  If any fail to send, resume using
  ```
  ./result --resume
  ```

  You can view failed sends in `jobs.log`, but you might also get mail delivery failure responses.

## 2024-09-30 Mon: Reminder for nominees

- Open an issue [like this](https://github.com/NixOS/SC-election-2024/issues/103)
- Send emails to unconfirmed candidates using e.g.
  ```
  nix-build ec -A unconfirmed.needsToSubmitFormAndNeedsMoreEndorsements
  ./result $GITHUB_HANDLE $NOMINATION_PR
  ```
- Optionally PM the nominees via other means (e.g. Matrix) in case the above means fail.

## Starting the voting phase
- Determine which pairs of candidates share the same conflict of interest

## Post-voting phase

## Misc

- Create the candidate documents
- Making announcements
- Running CIVS
- Unsubscribe people

In case somebody is violating the Q&A rules, their access to the repo can be removed by setting their id in `voters.json` to `null`

- Write a script to check exception requests or maybe a triggerable CI action.
  - Invite the person to the repo
  - Create a PR to add them to the voters.json, and ping them in the description
  - They need to upvote the PR to get accepted
  - Don't mention the user in the commit, because it's confusing to receive an email for that
  - Tell them in the PR what they can do now

Sending reminders:
- 2024-09-30: Finalise the list of candidates, publish their documents
- 2024-10-14 Monday: (vote reminder)
