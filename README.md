> [!Note]
> We're having data corruption problems with the election platform, see [the announcement](https://discourse.nixos.org/t/nix-steering-committee-election-2024/52232/15)

# Nix Steering Committee (SC) Election 2024

This repository contains all information regarding the first SC election in 2024.
The processes and elections for the SC have been established by the [Nix Constitutional Assembly (NCA)](https://github.com/nixos/nix-constitutional-assembly) with the [Nix Governance Constitution](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md).

## Overview

To participate as a voter:
- [Check and optionally update your email](./doc/email.md).
- If you're not already an [eligible voter](#eligible-voters), you may consider [requesting an exception](./doc/exception-request.md).
- [Cast a vote](./doc/vote.md) once the voting period starts.

Eligible voters can participate in the nomination period:
- [Nominate](./doc/nominate.md) yourself or others.
- Endorse [unconfirmed nominees](https://github.com/NixOS/SC-election-2024/pulls?q=is%3Apr+label%3Anomination+is%3Aopen) that you'd like to be able to vote for.
- [Ask questions](./doc/qna.md) to nominees as the primary way of engaging with them.

> [!Note]
> Please keep campaigning in other ways to a minimum.

This document describes the election overall instead, including:
- The [election timeline](#timeline) and its deadlines.
- Who's [eligible for voting](#eligible-voters).
- Who's [eligible as a candidate](#eligible-candidates).

## What is the Steering Committee

The SC will be a primary leadership body,
responsible for steering the official Nix projects, organisationally, socially and technically.
This includes making decisions over what is official, managing teams,
approving NixOS Foundation policies relevant for the community,
being the final escalation point, and more.

While the SC is given the authority to make decisions within the scope of its responsibilities directly,
one of the primary goals should be to delegate as much of it as possible.

SC members need to be familiar with the [Nix Community Values](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md) to guide the community in accordance,
as well as the [Nix Governance Constitution](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md) to adhere to it.

Since this is the first ever SC election, all its 7 seats will be elected.
These first terms will be staggered: The 4 people with the highest election ranking will have 2 year terms, while the rest will have 1 year terms.

## Election Committee (EC)

The EC is the temporary team to administer the election from start to finish.
Its primary mission is to ensure legitimacy of the election.

For any questions, concerns or suggestions about this election, reach out to the election committee:
- On GitHub: Ping [@NixOS/ec-2024](https://github.com/orgs/NixOS/teams/ec-2024)
- By email: <elections@nixos.org>
- On Matrix: [Nix SC Elections](https://matrix.to/#/#sc-elections:nixos.org) room
- To any specific member as mentioned below

For this first election, the NCA members are acting as the EC:

- Danielle Lancashire ([GitHub](https://github.com/endocrimes), [Discourse](https://discourse.nixos.org/u/endocrimes))
- edef ([GitHub](https://github.com/edef1c/), [Discourse](https://discourse.nixos.org/u/edef), [Email](mailto:nca@edef.eu))
- lassulus ([GitHub](https://github.com/Lassulus), [Discourse](https://discourse.nixos.org/u/lassulus), [Email](mailto:nix@lassul.us))
- 7c6f434c / Michael Raskin ([GitHub](https://github.com/7c6f434c/), [Discourse](https://discourse.nixos.org/u/7c6f434c), [Email](mailto:7c6f434c@mail.ru))
- Ryan Trinkle ([GitHub](https://github.com/ryantrinkle), [Discourse](https://discourse.nixos.org/u/ryantrinkle), [Email](mailto:ryan@trinkle.org))
- Sarah Novotny ([GitHub](https://github.com/sarahnovotny), [Discourse](https://discourse.nixos.org/u/sarahnovotny))
- Silvan Mosberger ([GitHub](https://github.com/infinisil/), [Discourse](https://discourse.nixos.org/u/Infinisil), [Email](mailto:nca@infinisil.com))

## Timeline

The election is expected to take place in a span of 6 weeks:

- 2024-09-16 Mon: Election starts
- 2024-09-29 Sun: Deadline for nominations
- 2024-10-01 Tue: Deadline for endorsements and candidate forms
- 2024-10-03 Thu: Deadline for candidate questions
- 2024-10-06 Sun: Deadline for candidate answers, submitting voter exceptions
- 2024-10-07 Mon: Voting started, but the poll [corrupted](https://discourse.nixos.org/t/nix-steering-committee-election-2024/52232/15)
- 2024-10-?? ???: Deadline for updating voter email addresses
- 2024-10-?? ???: Voting starts the second
- 2024-??-?? ???: Voting ends
- 2024-??-?? ???: Results announced

Deadlines are in [Anywhere on Earth](https://en.wikipedia.org/wiki/Anywhere_on_Earth) time,
meaning submissions are still valid as long as it is still the given day anywhere on the planet
(i.e. at the end of that day in UTC-12).

With this timeline, the first elected SC will be known just in time for [NixCon 2024](https://2024.nixcon.org/) in Berlin.

## Eligible voters

Currently eligible voters are listed in [`voters.json`](./voters.json)
with the email addresses[^2] that can be used for voting.
Make sure to verify and [update it](./doc/email.md) if necessary.

[^2]: `voters.json` was [initially populated](./nix/generate.nix) based on the [automatically eligible voters](#automatically-eligible-voters),
using the [Nixpkgs' maintainer list](https://github.com/NixOS/nixpkgs/blob/c51b40c5660fcb492bd1d01dd210005315b4cc7b/maintainers/maintainer-list.nix)
and its past versions to get the emails,
falling back to the public GitHub account email.

Matching GitHub accounts are also in `voters.json`
and being synchronised to [@NixOS/voters-2024](https://github.com/orgs/NixOS/teams/voters-2024),
which allows interacting with this repository.

[^1]: The same date as [the board announcement](https://discourse.nixos.org/t/nixos-foundation-board-giving-power-to-the-community/44552) that initiated the establishment of a constitution,
      further specified as the timestamp [in a follow-up board announcement](https://discourse.nixos.org/t/board-update-2-assembly-appointment-process/45048#what-has-happened-since-the-last-updatehttpsdiscoursenixosorgtboard-update-1-starting-process-and-transparent-communication44735-2)

Eligible voters are determined using contributions to official Nix projects in the four years preceding 2024-05-01[^1] in two ways: An [automatic one](#automatically-eligible-voters) and a [manual one](#exception-process).

Not eligible in any case are bot accounts and
people that are banned at the time when the list of automatically eligible voters is published.

### Automatically eligible voters

As a GitHub user, you're automatically eligible if you either:
- Have authored enough merged PRs to the [NixOS GitHub organisation](https://github.com/nixos) to total at least 25 commits.
- Have commit access and exercised it by merging any PR to the NixOS GitHub organisation.

[GH Archive](https://www.gharchive.org/) is used as a data source to approximately determine who's automatically eligibile.
A small amount of data is missing however, so this is not perfect.

The GitHub contributions to take into account were determined reproducibly using Nix and can be [checked yourself](./doc/check-contributions.md).

### Exception process

People who have contributed roughly the equivalent of 25 commits within the [specified time period](#eligible-voters),
but whose contributions aren't accurately counted automatically,
have the option of requesting an exception by following the [exception process](./doc/exception-request.md).

## Eligible candidates

The requirements to become a candidate are as follows:

- To be [eligible for voting](#eligible-voters)
- To provide a public position statement on why one should be elected
- To publicly disclose all potential [conflicts of interest](./doc/conflict-of-interest.md)
  - This includes conflicts of interest to arise during the term based on already finalised agreements
- To be publicly [endorsed](./doc/endorse.md) by at least 3 other people eligible to vote
  - Among the candidate and their endorsers, there must be at least 4 individuals where no two have the same conflict of interest (e.g. employees of the same company or otherwise the same payer for Nix work), as decided by the EC.
- To not be a member of the EC

## Platform

The vote will be held on [CIVS](https://civs1.civs.us/), using the [best-candidate](https://civs1.civs.us/proportional.html#bestcandidate) [proportional representation mode](https://civs1.civs.us/proportional.html) with the [Minimax-PM completion rule](https://civs1.civs.us/rp.html#minimax).

This mode is optimised for the Steering Committee to proportionally represent the contributors with their various views, and not abstractly be most trusted by most. <!-- TODO: Maybe reword. -->
