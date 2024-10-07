#!/usr/bin/env bash
set -euo pipefail
shopt -s nocasematch

# Very rough script, assumes:
# - `./result` is `nix-build -A voters`
# - `./endorser-cois` contains `<github handle>.md` files for each of the endorsers CoIs
# 
# Generates `./endorser-summary/<github handle>.md` for each candidate without enough endorsements, summarising the CoIs of the endorsers.
# Can be sent to the EC to make a decision

REPOSITORY=NixOS/SC-election-2024

mkdir -p endorser-summary

while read -r number author title; do
  echo "Processing PR $number ($title)"
  endorsers=("$author")
  readarray -O 1 -t endorsers < <(gh api \
    --paginate \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/repos/$REPOSITORY/issues/$number/comments" \
    --jq '.[] | select(.performed_via_github_app == null and (.body | contains("!endorse"))) | .user.login')

  {
    echo "For [this nomination](https://github.com/$REPOSITORY/pull/$number) ($title), we have these endorser conflicts of interest:"

    for endorser in "${endorsers[@]}"; do
      id=$(gh api /users/"$endorser" --jq .id)
      if ! grep "^$id$" result/github-ids >/dev/null; then
        echo "Endorsement from non-voter: $endorser" >&2
        continue
      fi
      file=endorser-cois/$endorser.md
      if [[ -f "$file" ]]; then
        echo "- $endorser:"
        sed "s/^/  /" "$file"
      else
        echo "- $endorser: (no conflict of interest disclosure)"
      fi
      echo ""
    done
  } > "endorser-summary/$number.md"
done < <(gh api \
  --paginate \
  --method GET \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "/repos/$REPOSITORY/pulls" \
  -f state=open \
  --jq '.[] | select(.labels | map(.name) | (contains(["nomination"]) and (contains(["enough endorsements"]) | not))) | "\(.number) \(.user.login) \(.title)"')
