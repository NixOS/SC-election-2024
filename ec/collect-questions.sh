#!/usr/bin/env bash

set -euo pipefail

tmp=$(mktemp -d)
trap 'echo rm -rf "$tmp"' exit
SCRIPT_DIR=$(dirname "$0")

for file in "$SCRIPT_DIR"/../candidates/*; do
  basename=$(basename "$file")

  echo -e "\n\n## Q&A\n" >> "$file"
done

gh api \
  --method GET \
  --paginate \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/NixOS/SC-election-2024/issues \
  -f labels=question \
  -f sort=comments |
  jq -c '.[]' > "$tmp/questions.json"

while read -r questionJson; do
  number=$(jq -r .number <<< "$questionJson")
  title=$(jq -r .title <<< "$questionJson")
  questionUrl=$(jq -r .html_url <<< "$questionJson")
  question=$(jq -r .body <<< "$questionJson" |
    awk '
      {
        if ($0 ~ "### Question.*") {
          q=1
        } else if ($0 ~ "### Candidates.*") {
          q=0
        } else {
          if (q == 1) {
            print $0
          }
        }
      }')

  echo "Processing question: $title"

  gh api \
    --paginate \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/repos/NixOS/SC-election-2024/issues/$number/comments" \
    --jq 'map({ key: .user.login, value: .}) | from_entries' > "$tmp/answers-$number.json"

  for file in "$SCRIPT_DIR"/../candidates/*; do
    basename=$(basename "$file")
    # Capitalisation might be off
    login=$(gh api --cache=1000h /users/"${basename%%.md}" --jq .login)
    if answerJson=$(jq -e --arg login "$login" '."\($login)"' "$tmp/answers-$number.json"); then
      answer=$(jq -r '.body' <<< "$answerJson")
      answerUrl=$(jq -r '.html_url' <<< "$answerJson")

      {
        echo "### $title ([link]($questionUrl))"
        echo ""
        echo "$question"
        echo ""
        echo "<details>"
        echo "<summary>Answer (<a href=\"$answerUrl\">link</a>)</summary>"
        echo ""
        echo "$answer"
        echo "</details>"
        echo ""
      } >> "$file"
    fi
  done
done < "$tmp/questions.json"


for file in "$SCRIPT_DIR"/../candidates/*; do
  echo "## Unanswered questions" >> "$file"
done

# Again for the unanswered questions
while read -r questionJson; do
  number=$(jq -r .number <<< "$questionJson")
  title=$(jq -r .title <<< "$questionJson")
  questionUrl=$(jq -r .html_url <<< "$questionJson")
  question=$(jq -r .body <<< "$questionJson" |
    awk '
      {
        if ($0 ~ "### Question.*") {
          q=1
        } else if ($0 ~ "### Candidates.*") {
          q=0
        } else {
          if (q == 1) {
            print $0
          }
        }
      }')

  echo "Processing question: $title"

  for file in "$SCRIPT_DIR"/../candidates/*; do
    basename=$(basename "$file")
    # Capitalisation might be off
    login=$(gh api --cache=1000h /users/"${basename%%.md}" --jq .login)
    if ! jq -e --arg login "$login" '."\($login)"' "$tmp/answers-$number.json" >/dev/null; then
      {
        echo "<details>"
        echo "<summary>$title (<a href=\"$questionUrl\">link</a>)</summary>"
        echo "$question"
        echo "</details>"
      } >> "$file"
    fi
  done
done < "$tmp/questions.json"
