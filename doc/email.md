# How to check, set or change your email address

If your email address in [`voters.json`](../voters.json) is missing or wrong,
you won't be able to [vote](./vote.md).

Be aware of the [the timeline](../README.md#timeline):
The deadline for changing emails is Sunday 2024-10-06.

To check if the email is set and correct:
1. Get your GitHub ID, e.g. using
   ```sh
   nix-shell -p github-cli --run "gh api /user --jq .id"
   ```

   or by going to `https://api.github.com/users/<github handle>` and looking for the `id` field.
1. Search for your GitHub ID in the [`voters.json` file](../voters.json).
1. If the respective email address is set and matches what you'd like to use for voting,
   you can already go ahead and [activate the email address](./vote.md#email-activation).

Otherwise:
1. Set or change the email address for your entry by editing the file,
   e.g. [directly on GitHub](https://github.com/NixOS/SC-election-2024/edit/main/voters.json)
1. Make a PR with the edit, the EC will merge it in time
1. [Activate the email address for voting](./vote.md#email-activation)
