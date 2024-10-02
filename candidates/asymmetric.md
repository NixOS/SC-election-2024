- Name: Lorenzo Manacorda
- GitHub handle: @asymmetric
- Email address: lorenzo@mailbox.org
- Discourse handle (optional): asymmetric
- Matrix handle (optional): @asymmetric:matrix.dapp.org.uk

### Conflict of interest disclosure

None at the time of writing.

### Motivation to be on the Steering Committee:

I think what the Nix ecosystem really needs is a coherent, community-supported roadmap
towards a clear set of goals. I see this as the most important task of the Steering
Committee, and helping us get there is the main reason I've decided to self-nominate.

We have a really solid idea at the core of Nix, the largest package collection in Nixpkgs,
and then a plethora of almost-finished (or in some cases half-finished) projects around that.
As a community, we need to figure out where we want to be in, say, 5 years, and the Steering
Committe should then corral as many resources (time, brainpower, money) as possible
around solving for that plan.

Once we have a clear set of goals, we can look for backers – both public and private –
who are willing to help us get there. The community will avoid co-optation by corporate
interests by taking the lead regarding its vision for the future. Here we can take [inspiration](https://chaos.social/@Foxboron/113226409305222252)
from the recently announced collaboration between Arch Linux and Valve.
Public funding tends to align better with the ethos of open source, and we should
intensify our connections with entities like NLNet;
but we shouldn't shy away from private sponsors either – provided they pass some
simple heuristic, e.g. not alienating a sizable chunk of the community.

I think this clarity of purpose can get us out of the stagnation and aimlessness the
project has, IMO, been mired in for the past couple of years, and ignite a virtuous cycle by
which we are more productive, and therefore attract (and retain) more talent and funding.

I take inspiration from the OCaml ecosystem. From my point of view as a mostly external
observer, it has lessons to teach us.
Sure, it's not the most mainstream language, but they've been making lots of
substantive quality-of-life improvements as of late, which have been guided by a
[coordinated effort](https://watch.ocaml.org/w/2KbfRNv2oLtkKXkbd5u9F1) by the OCaml Platform team, in [dialogue](https://discuss.ocaml.org/t/a-roadmap-for-the-ocaml-platform-seeking-your-feedback/12238) with the community.

Things we could learn from them:

- Classification of ecosystem tools as "active" (i.e. cornerstone), "incubate" (experimental)
  and "sustain" (~complete, not receiving new features), "deprecate"
- Clear rules as to what constitutes an officially supported project. Everything that is
  under this umbrella should be "well supported", according to some definition
- Clear guidelines on what constitutes a mature project, and how to get projects to maturity
- Creation of a team (this is the SC for us) that coordinates across different maintainer teams, and helps them
  come out with clear goals. Harmonization of those goals into a coherent story, and
  prioritization so that that story is clear, for the next 1-2 years ahead.

For us a key component, as mentioned above, is attracting and directing funds. I obviously
don't think we should rely exclusively on paid work, but some of the big items on our TODO
list (flakes separation/stabilization, cache sustainability, documentation, hydra
maintenance, among others) do require a level of commitment over time that I don't think is
fair to expect of volunteers.

Just to give some context, according to the [latest report by
Tidelift](https://explore.tidelift.com/2024-survey) ([summary](https://www.theregister.com/2024/09/18/open_source_maintainers_underpaid/)), 60% of interviewed maintainers are unpaid volunteers. Moreover, it
seems like the era of maintainers even being *able* to give their work away for free might
be a thing of the past: the number of young maintainers has dropped from 25% in 2021 to
10% in 2024. This is not only unsustainable, but also unjust.
Maintainers create tons of (use-)value, which can then be appropriated and productized by
corporations, who reap most of the financial benefits. The traditional license-based
approach is only a part of the solution, as it focuses too much on questions of
individual freedom, without addressing the material circumstances the code is produced under.
That said, I'd be in favor of a thoughtful re-calibration of our licensing policy towards
copyleft licenses, if it resulted in fairer working conditions.

#### What I have done:

- I am a former member of the documentation team, where I helped out transitioning to
  nix.dev as well as putting out some tutorials (e.g. the [module system deep dive](https://nix.dev/tutorials/module-system/deep-dive)).
- I maintain [20 packages](https://repology.org/projects/?maintainer=lorenzo@mailbox.org&inrepo=nix_stable_24_05) and am a nixpkgs committer
- I was shepherd-lead on [one RFC](https://github.com/NixOS/rfcs/blob/master/rfcs/0089-collect-non-source-package-meta.md?plain=1), shepherd on [two](https://github.com/NixOS/rfcs/blob/master/rfcs/0052-dynamic-ids.md) [more](https://github.com/NixOS/rfcs/blob/master/rfcs/0145-doc-strings.md)
- I am in the [NixOS RFC SC](https://nixos.org/community/teams/rfc-steering-committee/)
- I created [this little tool](https://github.com/asymmetric/nixpkgs-update-notifier) to subscribe to nixpkgs-update build failures
- I [signed](https://archive.is/2ert3) the Open Letter of NixOS Users against MIC Sponsorship
- I [did not sign](https://save-nix-together.org/) the Save Nix Together open letter

#### What I'll do

Mainly, I'll work hard, together with my fellow SC members, to ensure we have a workable,
cohesive, rational plan for the next couple of years, by actively listening to different stakeholders, gathering actionable steps, and prioritizing them. Please see the first section for a more detailed exposition of my beliefs and reasoning.
