#!/usr/bin/env bash
set -euo pipefail

nomineeHandle=$1

echo "Building the list of eligible voters"
nix-build -A voters

if ! endorserEmail=$(jq -er --arg id "$ENDORSER_ID" '."\($id)"' result/github-to-emails); then
  gh api \
    --method POST \
    "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
    -F "body=@-" << EOF
@$ENDORSER_LOGIN You cannot endorse until you [set an email](https://github.com/NixOS/SC-election-2024/blob/main/doc/email.md).
EOF
  exit 0
fi
scripts/send-email.sh "$endorserEmail" "Nix SC Election 2024: Endorser conflicts of interest" <<EOF
Hello, @$ENDORSER_LOGIN

You've indicated that you'd like to endorse the
[nomination] of @$nomineeHandle as a candidate for the Nix Steering Committee.

To complete the endorsement,
reply to this email with your [conflicts of interest].

[nomination]: https://github.com/$REPOSITORY/pull/$PR_NUMBER
[conflicts of interest]: https://github.com/$REPOSITORY/blob/main/doc/conflict-of-interest.md
EOF

gh api \
  --method POST \
  "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
  -F "body=@-" << EOF
@$ENDORSER_LOGIN To complete your endorsement, please reply to the email asking for your conflicts of interest that has been sent to your [voter email address](https://github.com/NixOS/SC-election-2024/blob/main/doc/email.md). If it doesn't arrive within a couple minutes, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).
EOF
