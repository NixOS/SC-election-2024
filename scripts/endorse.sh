#!/usr/bin/env bash
set -euo pipefail

endorsersAskedFile=scripts/endorsersAsked.txt

touch "$endorsersAskedFile"

if grep "^$ENDORSER_ID$" "$endorsersAskedFile" >/dev/null; then
  gh api \
    --method POST \
    "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
    -F "body=@-" << EOF
@$ENDORSER_LOGIN You've already been asked to disclose your conflicts of interest after a previous endorsement. So the endorsement is already complete if you replied to that email (sent to your [voter email address](https://github.com/$REPOSITORY/blob/main/doc/email.md)). If you never received that, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).
EOF
  exit 0
fi

echo "Building the list of eligible voters"
nix-build -A voters

if ! endorserEmail=$(jq -er --arg id "$ENDORSER_ID" '."\($id)"' result/github-to-emails); then
  gh api \
    --method POST \
    "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
    -F "body=@-" << EOF
@$ENDORSER_LOGIN You cannot endorse until you [set an email](https://github.com/$REPOSITORY/blob/main/doc/email.md). Please try again once set.
EOF
  exit 0
fi
scripts/send-email.sh "$endorserEmail" "Nix SC Election 2024: Endorser conflicts of interest" <<EOF
Hello, @$ENDORSER_LOGIN

You've indicated that you'd like to endorse a nominee for the Nix Steering Committee.

To complete the endorsement,
reply to this email with a disclosure of _all_ your potential sources of conflicts of interest.
This includes, but is not limited to, employers or otherwise payers of Nix work.

We will use this disclosure to check for conflicts of interest with
any candidates you endorse but also their other endorsers.
As such, you will only receive this request once for this election.

Note that this disclosure will not be published.
EOF

echo "$ENDORSER_ID" >> "$endorsersAskedFile"
git add "$endorsersAskedFile"
git commit -m "Update list of endorsers asked"
git push

gh api \
  --method POST \
  "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
  -F "body=@-" << EOF
@$ENDORSER_LOGIN To complete your endorsement, please reply to the email asking for your conflicts of interest that has been sent to your [voter email address](https://github.com/$REPOSITORY/blob/main/doc/email.md). If it doesn't arrive within a couple minutes, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).
EOF
