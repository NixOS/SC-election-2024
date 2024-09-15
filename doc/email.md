# How to check, set or change your Email address

Voters are [identified](../README.md#identification) using the Email addresses in [`voters.json`](../voters.json).
If your Email address is missing or wrong, you won't be able to [vote](./vote.md).
As detailed in the [timeline](../README.md#timeline), Emails addresses can only be set or changed until Sunday 2024-10-06, before the voting period starts.

To check if the email is set and correct:
1. Get your GitHub ID, e.g. using
   ```sh
   nix-shell -p github-cli --run "gh api /user --jq .id"
   ```

   or by going to `https://api.github.com/users/<github handle>` and looking for the `id` field.
1. Search for your GitHub ID in the [`voters.json` file](../voters.json).
1. If the respective Email address is set and matches what you'd like to use for voting,
   you can already go ahead and [register the Email address](./vote.md#email-registration).

Otherwise:
1. Set or change the Email address for your entry by editing the file,
   e.g. [directly on GitHub](https://github.com/NixOS/SC-election-2024/edit/main/voters.json)
1. Make a PR with the edit, the EC will merge it in time
1. [Register the Email address for voting](./vote.md#email-registration)
