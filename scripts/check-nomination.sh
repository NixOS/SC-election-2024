#!/usr/bin/env bash

set -x
set -euo pipefail
shopt -s nocasematch
shopt -s inherit_errexit

nomineeHandle=

getNominee() {
  readarray -t addedFiles < <(
    gh api "repos/$REPOSITORY/pulls/$PR_NUMBER/files" \
      --jq '.[] | select(.status == "added") .filename'
  )
  isNomination=
  for file in "${addedFiles[@]}"; do
    if [[ "$file" == candidates/* ]]; then
      isNomination=1
      break
    fi
  done

  if [[ -z "$isNomination" ]]; then
    echo "Not a nomination PR"
    exit 0
  fi

  if (( "${#addedFiles[@]}" > 1 )); then
    echo "Only one person can be nominated per PR"
    exit 1
  elif ! [[ "${addedFiles[0]}" =~ candidates/(.*).md ]]; then
    echo "Nominations must add the file <github handle>.md"
    exit 1
  fi
  nomineeHandle=${BASH_REMATCH[1]}
}

case "$EVENT" in
  pull_request_target)
    if jq -e --argjson id "$NOMINATOR_ID" 'with_entries(select(.value == $id)) == {}' voters.json; then
      exit 0
    fi

    if [[ "$HAS_NOMINATION_LABEL" == true ]]; then
      echo "This PR is already marked as a nomination"
      exit 0
    fi
    
    getNominee

    if ! id=$(gh api "/users/$nomineeHandle" --jq .id); then
      echo "GitHub user @$nomineeHandle does not exist"
      exit 4
    elif [[ "$PR_TITLE" != *$nomineeHandle* ]]; then
      echo "GitHub user @$nomineeHandle is not mentioned in the PR title"
      exit 5
    fi

    echo "Building the list of eligible voters"
    nix-build -A voters

    if ! email=$(jq -er --arg id "$id" '."\($id)"' result/github-to-emails); then
      echo "GitHub user @$nomineeHandle ($id) does not match to any eligible voter in voters.json"
      exit 6
    fi


    if [[ "$NOMINATOR_ID" == "$id" ]]; then
      # Self-nomination
      scripts/self-nomination.sh "$email" "$nomineeHandle"
    else
      scripts/other-nomination.sh "$email" "$nomineeHandle"
      ENDORSER_ID="$NOMINATOR_ID" ENDORSER_LOGIN="$NOMINATOR_LOGIN" scripts/endorse.sh
    fi

    gh api --method POST \
      "/repos/$REPOSITORY/issues/$PR_NUMBER/labels" \
      -f "labels[]=nomination"

    ;;
  issue_comment)
    if jq -e --argjson id "$ENDORSER_ID" 'with_entries(select(.value == $id)) == {}' voters.json; then
      exit 0
    fi

    if [[ "$IS_ENDORSEMENT" == true ]]; then
      scripts/endorse.sh
    fi
esac
