- Name: Adam Hoese
- GitHub handle: adisbladis
- Email address: adisbladis@gmail.com
- Discourse handle (optional): adisbladis
- Matrix handle (optional): adis@blad.is

### Conflict of interest disclosure

No current conflict of interests.

### What I have done

- Nixpkgs committer since 2017.
  - Where I'm a maintainer of Emacs & it's build infrastructure.

- One of the admininistrators of the
[nix-community](https://github.com/nix-community) org.

- Co-created [Summer of Nix](https://summer.nixos.org/) together with
[Matthias Meschede](https://github.com/MMesch).

- Co-organiser of Nixcon 2018 & 2019.

- Maintainer & creator of notable projects such as:
  - [emacs-overlay](https://github.com/nix-community/emacs-overlay)
  - [poetry2nix](https://github.com/nix-community/poetry2nix)
  - [pyproject.nix](https://github.com/nix-community/pyproject.nix)

### What I'll do:

- Empowering teams

  Some of the things that makes
[nix-community](https://github.com/nix-community) great is it's very
low barrier to entry and management overhead.
  The main task of the admins is to unblock people and allow them to
get work done.

  I see the steering comittee very much in the same way. It's main job
is to keep everyone moving forward, and in the same direction.
  It should try to delegate as much as the day-to-day activities as
possible to teams and unblock techical & social barriers.
  Unless there is very good reason, technical details should be
decided upon by each respective team

  Whenever relevant the SC should involve and consult teams as appropriate.
  We have always been more bazaar than cathedral[1] and should keep
playing to that as one of our core strengths.

  1. https://en.wikipedia.org/wiki/The_Cathedral_and_the_Bazaar

- Ensure support for diverse use cases

  In terms of technical direction I want Nix to become the ultimate
meta build-system.
  Nix code should be capable of understanding language ecosystems natively.
  I'd like for this to be an outspoken goal, and let that goal guide
the Nix implementations & language specific builders.

  There is often a split in the requirements from the perspective of
nixpkgs/nixos and the perspective of someone who wants to use Nix for
local development:

  Take a builder like `buildGoModule` for example. It uses one large
[FOD](https://nix.dev/manual/nix/2.18/glossary#gloss-fixed-output-derivation)
for the whole dependency graph.
  Additionally Nixpkgs is manually implemented in Nix code, while for
development you'd want to use the language native development
descriptions without translating them into Nix, and have more granular
fetching.

  It's entirely possible to design around both the needs of Nixpkgs
and local dev, but Nixpkgs so far has mostly focused on the immediate
needs of Nixpkgs/NixOS, and not it's other use cases.
  Efforts like https://github.com/NixOS/nixpkgs/issues/333702 could
satisfy both the needs of Nixpkgs packaging & make local development
smoother.

- Make the community more internationally accessible & diverse

  Since becoming a member of the Nix community I have lived all over
the globe, and experienced the Nix community from all time zones and
connectivity standards.
  This means that I have a quite unique perspective on how viable it
is to be involved from different locations.

  Let's start with the issue of time zones in regards to moderation:
All existing moderation team members are living in Europe.
  Several times I have seen banned behaviour on Matrix channels that
is left unmoderated for many hours because moderators are inaccessible
during certain time windows.
  We need to add geographical diversity as a requirement to the
moderation team for it to be able to act quickly enough against
abusive behaviour.

  The other big problem in the area I see is the accessibility of Nixcon.
  As the biggest Nix-related event of the year where Nix contributors
meet & major decisions are made it needs to be more accessible to
everyone.
  I believe Nixcon should be an ambulatory conference so far as is
possible and practicable.

  Having multiple "Nixcon"'s is not a solution here. Many (most?)
contributors will only come to the one official event closer to them
  In that sense I think that [Nixcon NA](https://2024-na.nixcon.org/)
was a step back.
  What I want to see is not a Nixcon North America, but Nixcon in North America.

  We should have one official ambulatory conference where we try to
tap into our geographical diversity as much as possible.
  [Debconf](https://www.debconf.org/) looks like a gold standard.
  This is an aspirational goal, and not always achieveable.
