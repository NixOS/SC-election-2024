This is a very drafty doc!

Ballots should have names plus the CoI identifier/category/pairwise disqualification tag, something like that

Description should point out the CoI thing, that the result of the election might not be correct just yet

Marker to clarify CoIs. Depends on CoI graph

```html
<a href="https://github.com/NixOS/SC-election-2024/blob/main/candidates/aleksanaa.md">@aleksanaa</a>
<a href="https://github.com/NixOS/SC-election-2024/blob/main/candidates/hsjobeki.md">@hsjobeki</a> (conflicts with @asymmetric)
<a href="https://github.com/NixOS/SC-election-2024/blob/main/candidates/asymmetric.md">@asymmetric</a> (conflicts with @hsjobeki)
<a href="https://github.com/NixOS/SC-election-2024/blob/main/candidates/SigmaSquadron.md">@SigmaSquadron</a>
```

- Name of supervisor (you): Nix Election Committee
- E-mail address of supervisor: elections@nixos.org
- Day and time you plan to stop the poll: <FILLME> 23:59:59 UTC-12

```
Click on names to see each candidates public statements, conflicts of interest and filled out questions.
<br>
The winners are taken post CoI evaluation. That means, if 2 winners with a CoI would be winning an election, only the person with more votes gets into the EC, though it's not trivial to see who actually wins in such a case. The EC will announce the final result when the CoI evaluation is done.
<br>
The final results in case of conflicts of interest will be available a few days after the poll is ended, at <a href="something">this link</a>
```

- Enable detailed ballot reporting: Yes (needed for the CoI calculations)
- Enforce proportional representation [more information]: Yes
  - rank of their favorite choice
- Create the poll
- Start it from the link you received in the email
- Build `nix-build -A voters`
- Upload `result/emails.txt` as the voter list
- Download the CSV table of voters that haven't activated their email yet
- TODO: Run a script to send all of those users a reminder to active to be able to vote


## To evaluate results

- Look at "Winning set(s) of choices" for the winners, there might be ties which can be resolved by looking at "Choices (in individual preference order)", I think
- If there's CoI conflicts in the winning set, click "Show details" and "Download ballots in CSV format"
- Remove the candidate with the least votes from the ballots and create a new test poll with the changed ballots
