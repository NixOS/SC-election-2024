# How to process requests as the EC

## Decision process

1. Post a message for the decision to the internal EC channel
2. Decide over the request:
   - React to the message with :+1: :-1:
   - If the message gets :+1:/:-1: from more than half the EC, it gets approved/rejected immediately
   - Otherwise, if after 24 hours, there are at least 2 :+1:[^1] and no :-1:, it gets approved
   - Otherwise, ping the EC members that have not voted
3. Once decided, react with :white_check_mark: to indicate you will process the request

[^1]: These numbers were decided by the initial EC of size 7, needs to be adjusted for smaller EC sizes

## Replying to emails

When replying to emails, make sure it's sent to all of:
- The original sender
- If available, the corresponding email in `voters.json`
- <elections@nixos.org>

## On receiving disclosure of endorser conflicts of interest

- Commit the CoI disclosure to the private repo and reply to the email with
  ```
  Thank you, we have received your conflicts of interest disclosure.
  ```
- For all PRs the endorser was involved with (search for `involves:someUser`) that have at least 3 endorsements on the PR,
  initiate the [decision process](#decision-process) to decide over whether there are enough non-conflicting endorsements.
- If approved, add the "enough endorsements" label
- If approved and the nominee submitted the candidate template form, merge the PR and leave this comment:
  ```
  EC: This candidate has met the endorsements requirement and submitted the nomination form, which makes them a valid candidate.
  ```
- If approved but the nominee did not submit the candidate template form, leave a comment:
  ```
  EC: This nominee has met the endorsements requirement. As soon as we receive their filled-out candidate form, this PR will be merged, making them a valid candidate.
  ```

  ```
  EC: This nominee has met the endorsements requirement. In case they accept the nomination and we receive their filled-out candidate form, this PR will be merged, making them a valid candidate.
  ```

## On receiving nomination forms

- Commit the nomination form to the private repo and reply to the email with
  ```
  Thank you, we have received your nomination form.
  ```
- Merge the PR if 3 non conflicting endorsements were made (see above)
  ```
  EC: We confirm the candidacy of @<USER>, no more endorsements are necessary.
  ```

## On receiving exception requests

- Reply to the email with
  ```
  Thank you, we have received your exception request and will reach out again when we made the decision.
  ```

- Initiate the [decision process](#decision-process) to decide over whether they meet the [bar for eligibility](../doc/exception-request.md)

  You may want to [list the users GitHub contributions](../doc/check-contributions.md) to help with that.
- If approved:
  - Add their email (and GitHub user if they provided one) to the [`voters.json` file](../voters.json) and commit it
  - Reply with
    ```
    Thank you, we are approving your exception request, you have been added to the voters list.
    ```
- If rejected, reply with
  ```
  Unfortunately we are not approving your exception request.
  ```

## On other emails

Forwards it as a message to the internal EC channel to decide what to do

## On a suspected rule violation

Only if the rule violation is subjective, invoke the [decision process](#decision-process)
to decide whether it was violated and the resulting action to take.
For objective rule violations, EC members can act independently.

If the rule violation is objective:
1. Send an email to the respective user containing:
   - That their comment has been deleted
   - The rule that was violated
   - The contents of their violating issue/comment
   - Suggested alternatives
1. Close the issue or delete the comment

For subsequent rule violations, access to the repo may be revoked:
1. Replace the respective users GitHub id in `voters.json` with
   ```
   "<email>": "@<handle>: Revoked repository access due to rule violations"
   ```

   Make sure to leave the email as is, the user is still allowed to vote.
1. The above only removes the user from the voters GitHub team.
   To actually revoke access, they need to be removed from the NixOS GitHub organisation.
   This should only be done if it doesn't revoke any other privileges,
   such as write access to repositories or removals from other teams.
