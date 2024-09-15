#!/usr/bin/env bash
set -euo pipefail

nomineeEmail=$1
nomineeHandle=$2

# Mostly duplicated in ./self-nomination.sh!
scripts/send-email.sh "$nomineeEmail" "You have been nominated" <<EOF
Hello, @$nomineeHandle

You've just [been nominated] for the Nix Steering Committee!

If you don't accept the nomination, you can ignore this Email.

If you do accept, post a comment in the nomination PR.

To get on the ballot as a candidate, there are some additional requirements:
- Familiarise yourself with the [Nix Community Values]
  and the [Nix Governance Constitution].
  If you become a Steering Committee member, you will need to uphold these.
  If you have any questions about these documents,
  feel free to [contact the EC].
- Reply to this Email with the filled-out candidate template below.
  If you become a candidate,
  this document will be published and linked on the ballot.
- Get [endorsed] by at least 3 other eligible voters,
  such that among you and the endorsers,
  there are at least four people with no two sharing a [conflict of interest].

Please be aware of the [deadlines].

Once the Election Committee confirms the above,
the pull requests will be merged.
Note that you can participate in the [candidate Q&A] already.

[been nominated]: https://github.com/$REPOSITORY/pull/$PR_NUMBER
[Nix Community Values]: https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md
[Nix Governance Constitution]: https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md
[contact the EC]: https://github.com/$REPOSITORY/blob/main/README.md#election-committee-ec
[endorsed]: https://github.com/$REPOSITORY/blob/main/doc/endorse.md
[conflict of interest]: https://en.wikipedia.org/wiki/Conflict_of_interest
[deadlines]: https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#timeline
[candidate Q&A]: https://github.com/NixOS/SC-election-2024/blob/main/doc/qna.md

---

$(<doc/candidate-template.md)
EOF

# Mostly duplicated in ./self-nomination.sh!
gh api \
  --method POST \
  "/repos/$REPOSITORY/issues/$PR_NUMBER/comments" \
  -F "body=@-" << EOF
@$nomineeHandle: You've been nominated! To accept, please indicate so with a comment.

An email with next steps has been sent to your address in \`voters.json\`. If it doesn't arrive within a couple minutes, check the spam folder or [get in touch with the EC](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#election-committee-ec).

To be confirmed as a candidate, you need the endorsement from at least 3 other eligible voters [in time](https://github.com/$REPOSITORY/tree/main?tab=readme-ov-file#timeline), such that among you and the endorsers, there are at least four people with no two sharing a [conflict of interest](https://en.wikipedia.org/wiki/Conflict_of_interest).

---

**To endorse this candidate, leave a comment containing the string \`!endorse\`**. This PR will be merged if there are enough endorsements to satisfy the conflict of interest requirement, so if it's still open, the nominee might still need more endorsements.
EOF
