# How to verify the election result

The resulting Nix Steering Committee for this election is (sorted alphabetically):
- @Ericson2314 (2 year term)
- @fpletz (1 year term)
- @Gabriella439 (2 year term)
- @jtojnar (2 year term)
- @roberth (2 year term)
- @tomberek (1 year term)
- @winterqt (1 year term)

You can verify this as follows:
1. Check that the result matches <https://civs1.civs.us/cgi-bin/results.pl?id=E_8589ef69d0e60845> (see the winning set of choices).
   The terms are assigned according to the individual preference order.
2. Clone this repository. Subsequent commands assume it's available under `SC-election-2024`.
2. Download the CIVS ballots from <https://civs1.civs.us/cgi-bin/download_ballots.pl?id=E_8589ef69d0e60845> and verify that they match the [ones in the repository](../civs_ballots.csv):
   ```bash
   curl 'https://civs1.civs.us/cgi-bin/download_ballots.pl?id=E_8589ef69d0e60845' > civs_ballots.csv
   diff <(sort civs_ballots.csv) <(sort SC-election-2024/civs_ballots.csv)
   ```
3. Download the OpaVote ballots from <https://opavote.com/results/6251213851459584> ([direct link](https://opavote.com/ballots/6251213851459584/0?d=1)) and verify that it matches the [ones in the repository](../opavote_ballots.blt):
   ```
   diff ballots1.txt SC-election-2024/opavote_ballots.blt
   ```

   Note that the ballots will only be available from OpaVote until 2024-12-27, after that you cannot verify this part.
4. The two ballot lists are in very different formats, but should have the same data.
   To verify that, inspect the code in this repository and run:
   ```
   nix-build SC-election-2024 -A verifyBallotMatch
   ```
5. Recreate the CIVS result (optional, only works if CIVS doesn't change the implementation)
   1. [Create a new poll](https://civs1.civs.us/civs_create.html) with these options:
      - <details>
        <summary>Candidates:</summary>

        ```
        asymmetric
        cafkafk
        djacu
        doronbehar
        Ericson2314
        fpletz
        Gabriella439
        getchoo
        Infinidoge
        jtojnar
        kloenk
        linsui
        lovesegfault
        mschwaig
        numinit
        nyabinary
        phaer
        proofconstruction
        roberth
        Scrumplex
        tomberek
        winterqt
        yu-re-ka
        ```
        </details>
      - How many choices will win: 7
      - [x] Make this a test poll: read all votes from a file.
      - [x] Enforce proportional representation (rank of their favorite choice)
   2. Once on the poll control page, load the ballot data from `result/civs_ballots.txt`, which was generated from the previous step.
   3. Close the poll and verify that the results match.

## Verifying the voters

To verify that only people eligible [according to the constitution](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/constitution.md#vote-eligibility) are in the [`voters.json`](../voters.json) file:

1. Generate the initial list of automatically eligible people as was done by the EC in [this commit](https://github.com/NixOS/SC-election-2024/commit/fd157a8ad1b19733788325ad59d036fa6b434d20), inspect the code of this repository and run
   ```
   # If you don't have 4TB of space or can't wait 10 CPU days for processing:
   nix-shell -p cachix --run "cachix use nca"

   nix-build -A generateVoters
   ./result
   ```
2. See the approved exception requests, email changes and voters waiving their voting rights by inspecting the [Git history of `voters.json`](https://github.com/NixOS/SC-election-2024/commits/main/voters.json).

Because OpaVote does not give public access to the list of emails that were invited to vote, you need to trust the EC on it matching [`voters.json`](../voters.json).
Members of the EC can verify it as follows:

1. Download the voter list at <https://opavote.com/manage/6251213851459584/final?d=1>.
   This requires logging into the OpaVote account and is likely only available until 2024-12-27.
   The SHA256 hash of the file is
   ```
   8f10d15ca2c06a4812cf4ab5ebbdfc774bb831487507266acc0f67a9d6b51d42  voter_list.csv
   ```
2. In `nix-shell -p csvkit jq diffutils`, run
   ``` bash
   diff \
     <(jq -r 'keys[] | select(startswith("@") | not) | ascii_downcase' voters.json | sort) \
     <(csvjson voter_list.csv | jq -r '.[] | select((.Voted == true or .Bounce != true) and .Disabled != true) | .Voter' | sort)
   ```

Note that:
- Voters who didn't have an email address in `voters.json` couldn't be invited to vote.

  They were informed of needing to set an email address ([1](https://github.com/NixOS/SC-election-2024/issues/1#issuecomment-2354208422) [2](https://github.com/NixOS/SC-election-2024/issues/130)), which some did with subsequent PRs.
- Some voters were invited, but their email bounced, in which case those voters were [given another chance](https://github.com/NixOS/SC-election-2024/commit/42efa5e76267e28c6bb053f0c3f26637d25213b1) to add a different email.

  There is also one special case of somebody being able to vote, but an email being bounced,
  most likely due to a later reminder email that bounced.
  That person was not given the chance to add another email.
  No other bounced emails cast a vote.
- Some voters voluntarily waived their voter rights and were thus manually disabled by the EC to stop sending email reminders.
