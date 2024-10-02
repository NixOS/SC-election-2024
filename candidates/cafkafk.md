- Name: Christina Sørensen
- GitHub handle: cafkafk
- Email Address: christina@cafkafk.com
- Matrix handle: cafkafk@gitter.im

### Conflict of interest disclosure:

I’m an infrastructure developer for DBC Digital[1], the second largest
financial contributor to the NixOS foundation, according to open
collective[2]. DBC Digital is owned by KL[3] (the national association
for the municipalities of Denmark).

My only major relevant contractual restriction is that other
employments must not compete directly with DBC’s interests.

DBC’s main task is to develop and maintain the bibliographic and IT
infrastructure in the Danish libraries. We make extensive use of NixOS
for this task.


### Motivation to be on the steering Committee

#### What I have done

I’m a systems/infrastructure developer working full time with NixOS
and Rust on a national scale in Denmark. I’m also the primary
maintainer of `eza`, and the person behind forking and creating a
community out of the then dead `exa` project[4]. Further, I’m a NixOS
contributor and committer.

Some people know me for being a major part in the initial Anduril
sponsorship discussions[5], but I’m also the creator of several Nix
adjacent projects:
- Nix Weather, a tool for debugging cache availability of Nix
  packages[6].
- Rime, a FOSS alternative to flakehub, adding semantic versioning to
  flake inputs[7].
- NixLang Wiki, a former alternative to the unmaintained nixos.wiki
  (now deprecated in favor of wiki.nixos.org)[8].
- NixOS Landscape, a project to map Nix Adjacent projects and increase
  discoverability[9].

I’m also a maintainer of the Morph nix deployment tool[10],
Kubernixos[11], and Wharfix[12], a Rust service that spins up a Docker
registry, with images defined as Nix expressions.

In nixpkgs, I was also part of reintroducing Guix to NixOS, and I’ve
been working to modernize the neglected kubernixos module:
- <https://github.com/NixOS/nixpkgs/pull/246975>
- <https://github.com/NixOS/nixpkgs/pull/264331>
- <https://github.com/NixOS/nixpkgs/pull/327842>
- <https://github.com/NixOS/nixpkgs/pull/290119>

Further nixpkgs stats:
- 139 authored PRs merged[13]
- 297 reviews closed, 20 ongoing[14]
- 23 reviews on PRs by new contributors[15]
- 42 packages maintained[16]

I also frequent the NixOS Copenhagen User Group[17], where I’ve
assisted as an organizer a few times, and the Copenhagen Rust
Community[18].

I have the privilege of being in a position where contesting the
positions of powerful community members isn’t career suicide. Further,
as the BDFL of eza, I’ve driven several contentious changes, such as
the introduction of our code of conduct, and I’m well acquainted and
unbothered by the harassment that can follow from leading change. My
track record in Nix shows the same, as I’ve pushed hard for
transparency around NixCon 2023, NixCon 2024 NA, and conflicts of
interest of board members. I’ve also defended gender statistics in the
annual survey, and called out diversity issues countless times.


#### What I will do

I want to create the best possible Nix project. Seriously.

Concrete goals I want to see:
- Introduce strong sanctions and penalties for undisclosed conflict of
  interest in decision making, specially when detrimental to the
  community and project.
- Clear outlines for sponsorships that first and foremost respect
  contributors wishes over company and board interests. The board and
  steering committee must represents the community, not their own
  interests.
- Transition projects, where feasible and sensible, to a Nix project
  self-hosted git forge.
- Stronger FOSS culture, encourage stronger licensing of new Nix
  projects.
- Investigate moving flake-utils into nixpkgs (this was attempted in
  the past, when flakes where considered more unstable).
- Establish “whistleblower” governance mechanisms, ensuring no problem
  remains unspoken out of fear. Anonymous moderation reports isn’t
  enough.
- Introduce CoC transparency reports, like other projects (e.g. CNCF).
- Improve release engineering project wide, specially for the Nix
  package manager.
- Ensure flakes are considered first class features that should be
  documented, even if still evolving, and that flake related issues
  aren’t blocked for being experimental (how else will it ever stop
  being experimental!).
- Ensure representation in leadership of minorities.

Nix package manager specific goals:
- Improve security culture and ownership, avoid miscommunications.
- Increase release stability guarantees, problems should be discovered
  before hitting nixpkgs and users.
- Ensure Nix has a culture open to on-boarding new contributors.
- Regulate external dependencies for subcommands (e.g. nix bundle has
  an ancient nixpkgs flake checkout, breaking it without
  deprecated-features url-literals, an isn’t inside of the official
  NixOS org, so can’t be fixed by the Nix project).
- Find respectful solution to naming of the Nix Package manager,
  solving the “Nix trinity problem” (we’ll end up with NixOS, Nix the
  language, and <Nix Package Manager>).

This list will likely evolve and adapt to suit community needs. I see
a lot of challenges on the horizon, but I believe that the community
can come together to rebuild trust, create a fun and enjoyable
environment, and stop corporate interests from tearing our project
apart at the seams.

Due to failures in leadership, we’ve lost countless valued
contributors, and many of those still left are apathetic and
demoralized. It is my goal to see these contributors represented in
leadership. Nix contributors shouldn’t feel subjected to a system that
doesn’t represent their goals, they should feel empowered, and valued
by leadership.

[1] <https://www.dbc.dk/english>

[2] <https://opencollective.com/dbc>

[3] <https://www.kl.dk/om-kl/english>

[4] <https://youtu.be/4CYinVmTUYA?t=468>

[5] <https://cafkafk.dev/p/code-in-the-crossfire-1/>

[6] <https://github.com/cafkafk/nix-weather>

[7] <https://github.com/cafkafk/rime>

[8] <https://nixlang.wiki>

[9] <https://github.com/nix-community/nixos-landscape>

[10] <https://github.com/DBCDK/morph>

[11] <https://github.com/DBCDK/kubernixos>

[12] <https://github.com/wharfix/wharfix>

[13]
<https://github.com/NixOS/nixpkgs/pulls?q=is%3Amerged+is%3Apr+author%3Acafkafk>+

[14] <https://github.com/NixOS/nixpkgs/pulls?q=reviewed-by%3Acafkafk>

[15]
<https://github.com/NixOS/nixpkgs/pulls?q=reviewed-by%3Acafkafk+label%3A%2212.+first-time+contribution%22%0A>

[16]
<https://search.nixos.org/packages?channel=unstable&from=0&size=50&buckets={%22package_attr_set%22%3A%5B%5D%2C%22package_license_set%22%3A%5B%5D%2C%22package_maintainers_set%22%3A%5B%22Christina%20S%C3%B8rensen%22%5D%2C%22package_platforms%22%3A%5B%5D}&sort=relevance&type=packages&query=%2A>

[17] <https://app.element.io/#/room/#copenhagen-nix:matrix.org>

[18] <https://cph.rs>
