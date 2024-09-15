# Nix Steering Committee (SC) Elections 2024

This repository contains all information regarding the first SC election in 2024.
The processes and elections for the SC have been established by the [Nix Constitutional Assembly (NCA)](https://github.com/nixos/nix-constitutional-assembly) with the [Nix Governance Constitution](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md).

> [!Note]
> Discussing nominations in official community or election support spaces is not allowed, except for the [Q&A](./doc/qna.md) in this repository.

## Overview

There are various guides on how you can participate in this election:
- [Nominating](./doc/nominate.md) yourself or others, to ensure your views are represented on the ballot.
- [Endorse nominees](./doc/endorse.md) you would like to vote for, to help them get on the ballot.
- [Ask questions](./doc/qna.md) to candidates/nominees to get clarifications on their views.
- [Cast a vote](./doc/vote.md) once the voting period starts.

This document describes the election overall instead, including:
- The [election timeline](#timeline) and its deadlines
- Who's [eligible for voting](#eligible-voters)
- Who's [eligible as a candidate](#eligible-candidates)

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

For any questions, concerns or suggestions about this election, reach out to the election committee by pinging
[@NixOS/ec-2024](https://github.com/orgs/NixOS/teams/ec-2024),
or privately at <elections@nixos.org>, or to any specific member below.
You can also join the [Nix SC Elections](https://matrix.to/#/#sc-elections:nixos.org) Matrix room for support.

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

- 2024-09-16 (Week 1, Monday): Election starts, time for:
  - [Nominations](https://github.com/NixOS/SC-election-2024/tree/main/doc/nominate.md) and [endorsements](https://github.com/NixOS/SC-election-2024/tree/main/doc/endorse.md)
  - [Candidate questions and answers](https://github.com/NixOS/SC-election-2024/tree/main/doc/qna.md)
  - [Updating voter emails](https://github.com/NixOS/SC-election-2024/tree/main/doc/email.md), [submitting voter exceptions](https://github.com/NixOS/SC-election-2024/tree/main/doc/exception-request.md) and [voter registration](https://github.com/NixOS/SC-election-2024/tree/main/doc/vote.md#email-registration)
- 2024-09-29 (Week 2, Sunday): Deadline for nominations
- 2024-10-01 (Week 3, Tuesday): Deadline for endorsements
- 2024-10-03 (Week 3, Thursday): Deadline for candidate questions
- 2024-10-06 (Week 3, Sunday): Deadline for candidate answers, updating voter emails and submitting voter exceptions
- 2024-10-07 (Week 4, Monday): Election gets [locked in](https://github.com/NixOS/SC-election-2024?tab=readme-ov-file#lock-in) and [voting](https://github.com/NixOS/SC-election-2024/tree/main/doc/vote.md) period starts
- 2024-10-20 (Week 5, Sunday): Voting period ends
- 2024-10-23 (Week 6, Wednesday): Election ends, first Steering Committee is announced

Deadlines are in [Anywhere on Earth](https://en.wikipedia.org/wiki/Anywhere_on_Earth) time, meaning submissions are still valid as long as it is still the given day anywhere on the planet (i.e. at the end of that day in UTC-12).

With this timeline, the first elected SC will be known just in time for [NixCon 2024](https://2024.nixcon.org/) in Berlin.

## Platform

Candidates and their information will be tracked in this GitHub repository.

The vote will be held on [CIVS](https://civs1.civs.us/), using the [best-candidate](https://civs1.civs.us/proportional.html#bestcandidate) [proportional representation mode](https://civs1.civs.us/proportional.html) with the [Minimax-PM completion rule](https://civs1.civs.us/rp.html#minimax).

This mode is optimised for the Steering Committee to proportionally represent the contributors with their various views, and not abstractly be most trusted by most. <!-- TODO: Maybe reword. -->

## Eligible voters

Eligible voters are determined using contributions to official Nix projects in the four years preceding 2024-05-01[^1].

[^1]: The same date as [the board announcement](https://discourse.nixos.org/t/nixos-foundation-board-giving-power-to-the-community/44552) that initiated the establishment of a constitution,
      further specified as the timestamp [in a follow-up board announcement](https://discourse.nixos.org/t/board-update-2-assembly-appointment-process/45048#what-has-happened-since-the-last-updatehttpsdiscoursenixosorgtboard-update-1-starting-process-and-transparent-communication44735-2)

There are two ways in which one can become eligible for voting, an [automatic one](#automatically-eligible-voters) and a [manual one](#exception-process).
Not eligible in any case are bot accounts and
people that are banned at the time when the list of automatically eligible voters is published.

### Identification

Eligible voters are identified using the Email addresses in [`voters.json`](./voters.json).
These Email addresses must be up-to-date, so make sure to verify and [update it](./doc/email.md) if necessary.
Furthermore, you must [register](./doc/vote.md#email-registration) your email to be able to vote.

`voters.json` was [initially populated](./nix/generate.nix) based on the [automatically eligible voters](#automatically-eligible-voters),
using the [Nixpkgs' maintainer list](https://github.com/NixOS/nixpkgs/blob/c51b40c5660fcb492bd1d01dd210005315b4cc7b/maintainers/maintainer-list.nix)
and its past versions to get the Emails,
falling back to the public GitHub account Email.
Automatically eligible voters whose Email addresses aren't known will be pinged on GitHub to [provide it](./doc/email.md).

`voters.json` also contains matching GitHub IDs, which are synchronised with the [@NixOS/voters-2024](https://github.com/orgs/NixOS/teams/voters-2024) GitHub team.
A GitHub ID is not required for voting, but it is required if you want to interact with this repository to
[endorse a nominee](./doc/endorse.md), [nominate yourself or somebody else](./doc/nominate.md), or [ask candidate questions](./doc/qna.md).

### Automatically eligible voters

As a GitHub user, you're automatically eligible if you either:
- Have authored enough merged PRs to the [NixOS GitHub organisation](https://github.com/nixos) to total at least 25 commits.
- Have commit access and exercised it by merging any PR to the NixOS GitHub organisation.

[GH Archive](https://www.gharchive.org/) is used as a data source to approximately determine who's automatically eligibile.
A small amount of data is missing however, so this is not perfect.

The contributions to take into account were determined reproducibly using Nix and can be [checked yourself](./doc/check-contributions.md).

### Exception process

People who have contributed roughly the equivalent of 25 commits within the [specified time period](#eligible-voters),
but whose contributions aren't accurately counted automatically,
have the option of requesting an exception by following the [exception process](./doc/exception-request.md).

## Eligible candidates

The requirements to become a candidate are as follows:

- To be [eligible for voting](#eligible-voters)
- To provide a public position statement on why one should be elected
- To publicly disclose all potential conflicts of interest
  - This includes conflicts of interest to arise during the term based on already finalised agreements
- To be publicly [endorsed](./doc/endorse.md) by at least 3 other people eligible to vote
  - Among the candidate and their endorsers, there must be at least 4 individuals where no two have the same conflict of interest (e.g. employees of the same company or otherwise the same payer for Nix work), as decided by the EC.
- To not be a member of the EC

## Lock-in

Before the voting period starts, the EC locks in the election.
This means that the EC will publicly commit to everything that could affect the election result.
This includes:
- The [eligible voters](#eligible-voters) and their Emails, including any approved [exceptions](#exception-process).
- Which pairs of candidates share the same conflict of interest, because such pairs [cannot both be elected](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#conflict-of-interest-coi-balance).
- The day the voting period ends
