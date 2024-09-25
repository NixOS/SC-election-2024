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
  EC: This candidate has met the endorsements requirement. As soon as we receive the candidate's filled-out form, this PR will be merged.
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
