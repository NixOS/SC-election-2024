#!/usr/bin/env bash

# Converts an OpaVote BLT file (https://opavote.com/help/overview#blt-file-format) from stdin
# to a CIVS ballot file (https://github.com/andrewcmyers/civs/blob/867d2c68b0259cac6e0269515b56edb1c49a8003/cgi-bin/languages/base_language.pm#L326-L344) to stdout

# Summary of the CIVS format:
# Each line contains the ranks of the N choices. Ranks are numbers from 1 to N
# 2 4 3 1 5        A simple ballot ranking five choices. The top-ranked choice is the fourth one.

# However, entirely undocumented right now, for the best-candidate (the opposite of combined weights/ratings) voter criteria, which we're using, the rankings are inverted!
# https://github.com/andrewcmyers/civs/blob/867d2c68b0259cac6e0269515b56edb1c49a8003/cgi-bin/vote#L176-L178
# https://github.com/andrewcmyers/civs/blob/867d2c68b0259cac6e0269515b56edb1c49a8003/cgi-bin/results#L468-L475

set -euo pipefail

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' exit

read -r candidateCount _seatCount;
echo "Candidate count: $candidateCount" >&2
while read -ra ballot; do
  if [[ "${#ballot[@]}" == 1 && "${ballot[0]}" == "0" ]]; then
    echo "Read all ballots" >&2
    break
  else
    weight=${ballot[0]}
    unset 'ballot[0]'
    end=${ballot[-1]}
    unset 'ballot[-1]'
    if [[ "$weight" != 1 || "$end" != 0 ]]; then
      echo "Problematic ballot: First number (weight) is $weight (should be 1), last number (end marker) is $end (should be 0)" >&2
      exit 1
    fi

    declare -a candidateRanks=()
    for candidate in $(seq "${candidateCount}"); do
      candidateRanks[candidate]=1
    done

    # Inverts the ranking, see top of file!
    rank=$candidateCount
    for candidate in "${ballot[@]}"; do
      candidateRanks[candidate]=$(( rank-- ))
    done

      echo "${ballot[@]}" "->" "${candidateRanks[@]}" >&2
    (
      IFS=,
      echo "${candidateRanks[*]}"
    )
  fi
done | sort -n > "$tmp/sorted"

candidates=()
echo "Candidates (fill this into the candidate field):" >&2
for candidate in $(seq "${candidateCount}"); do
  read -r name
  name=${name%\"}
  name=${name#\"}
  if [[ "$name" == "0" ]]; then
    # For some reason CIVS doesn't store candidates named "0"
    name="0.0"
  fi
  echo "$name" >&2
  candidates+=("$name")
done

(
  IFS=,
  echo "#" "${candidates[*]}"
)
cat "$tmp/sorted"

read -r title
echo "Title: $title" >&2
