#!/usr/bin/env bash

# Generates a randomised OpaVote ballot file (https://opavote.com/help/overview#blt-file-format) to stdout

export BC_ENV_ARGS="-lq"

# Every voter has a normal-distributed preference X

# 25 voters and 10 candidates is the maximum for the free tier
voterCount=25
# 9 so that we have candidates -2, -1.5, ..., 0, ..., 1.5, 2, instead of messy numbers
candidateCount=9
seatCount=3
# With 40%, a minority group should get a representative
minorityPercentage=40


# Voters are represented with a single number. They vote for the candidate nearest to their number
voterValues=()
pi=$(echo "scale=10; 4*a(1)" | bc -l)
normal() {
  bc <<< "$1 * sqrt(-2 * l($(( RANDOM )) / 32767 )) * c(2 * $pi * $(( RANDOM )) / 32767) + $2"
}

for i in $(seq "$voterCount"); do
  # Check proportional representation works
  if (( 100 * i / voterCount <= minorityPercentage )); then
    # The minority group votes with a wide standard deviation around candidate (-3)
    # such that no single candidate gets more 1st ranks than the majority group.
    # We want to test that this group still get a representative seat regardless
    voterValues+=( "$(normal 2 -3)" )
  else
    # The majority group all votes effectively for the same candidate (3) with only minor differences,
    # which ensures that a number of candidates that could in theory fill all seats get most 1st and 2nd ranks,
    # but we don't want that to happen because of proportional representation
    voterValues+=( "$(normal 0.1 3)" )
  fi
done

# Sort the voters by their value number and therefore also ballots
readarray -t voterValues < <(printf "%s\n" "${voterValues[@]}" | sort -n)
declare -p voterValues >&2

# Candidates are uniformly distributed from -4 to +4, somewhat matching what would happen in reality,
# where people want to have a representative to vote for, and if they don't, they'd nominate themselves.
candidates=()
for (( i=1; i <= candidateCount; i++ )); do
  candidates[i]=$(bc <<< "scale=0; ($i - 1) * 8 / ($candidateCount - 1) - 4")
done
declare -p candidates >&2

# Start generating the file

echo "$candidateCount $seatCount"

for value in "${voterValues[@]}"; do
  #echo "New voter: $value"
  readarray -t rankedCandidates < <(
    for candidate in "${!candidates[@]}"; do
      # Calculate the distance between the voters value and the candidates
      echo "$candidate $(bc <<< "($value - ${candidates[$candidate]}) ^ 2")"
    done | sort -n -k2 | cut -d' ' -f1)

  #declare -p rankedCandidates
  weight=1
  end=0
  echo "$weight" "${rankedCandidates[@]}" "$end"
done
echo 0

for candidate in "${candidates[@]}"; do
  echo "\"$candidate\""
done

echo "\"Test Election\""
