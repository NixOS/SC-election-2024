#!/usr/bin/env bash

set -euo pipefail

nix-build -A voters

votersFile=result/github-ids
invitedFile=scripts/invited.txt

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' exit

sort "$votersFile" > "$tmp/sortedVotersFile"

touch "$invitedFile"
sort "$invitedFile" > "$tmp/sortedInvitedFile"

loginFor() {
  local id=$1
  echo "Getting login for user id $id" >&2
  if ! response=$(gh api \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/user/$id"); then
    echo "$response" >&2
    return 1
  fi
  jq -r .login <<< "$response"
}

add() {
  local id=$1
  local login
  if ! login=$(loginFor "$id"); then
    echo "User with id $id does not exist anymore, cannot add to the team" >&2
    return 1
  fi
  echo "Adding user with id $id and login $login to team $VOTER_TEAM" >&2
  if ! response=$(gh api \
    --method PUT \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/orgs/$ORG/teams/$VOTER_TEAM/memberships/$login?role=member"); then
    echo "$response" >&2
    return 1
  fi
  state=$(jq -r .state <<< "$response")
  case "$state" in
    active)
      echo "User was already part of the organisation, added to the team successfully" >&2
      ;;
    pending)
      echo "User was not part of the organisation, sent an invite to join both the organisation and the team" >&2
      ;;
  esac
}

remove() {
  local id=$1
  local login
  login=$(loginFor "$id")
  echo "Removing user with id $id and login $login" >&2
  if ! response=$(gh api \
    --method DELETE \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/orgs/$ORG/teams/$VOTER_TEAM/memberships/$login"); then
    echo "$response" >&2
    return 1
  fi
}

list() {
  echo "Listing all members of the team" >&2
  if ! response=$(gh api \
    --paginate \
    -H "Accept: application/vnd.github+json" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    "/orgs/$ORG/teams/$VOTER_TEAM/members?per_page=100"); then
    echo "$response" >&2
    return 1
  fi

  jq -r '.[].id' <<< "$response"
}

# Get all current members of the team
list | sort > "$tmp/githubTeamMembers"

# Load invited into an associative array for easy modification
declare -A newInvited
while read -r id; do
  newInvited[$id]=1
done < "$tmp/sortedInvitedFile"

# For all voters that have not been invited already
while read -r id; do
  # Add them to the team, though this could fail if the user is deleted
  if add "$id"; then
    newInvited[$id]=1
  fi
done < <(comm "$tmp/sortedVotersFile" "$tmp/sortedInvitedFile" -23)

# For all team members that are not voters
while read -r id; do
  # Remove them from the team
  remove "$id"
  # remove from invited
  unset "newInvited[$id]"
done < <(comm "$tmp/githubTeamMembers" "$tmp/sortedVotersFile" -23)

for id in "${!newInvited[@]}"; do
  echo "$id"
done | sort > "$invitedFile"

git add scripts/invited.txt
if ! git diff --cached --exit-code; then
  git commit -m "Update list of invited users"
  git push
fi
