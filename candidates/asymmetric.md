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
## Q&A

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2396168893">link</a>)</summary>

First of all, I agree 100% that sponsorships entail more than just donations. When we accept a sponsor, we are in fact boosting the organization that sponsors us, which means we have to be more vetting them more thoroughly than if we were just accepting their money or contributions.

I would say the best we can do is to have follow the heuristic of "Would accepting sponsorship from organization X create large tensions in the community?". If the answer is most likely yes, we should not accept that sponsor (Obviously, we shouldn't break any law of the hosting country/foundation either, duh).

This way the foundation doesn't have to enter the extremely fraught question of what its values are in relation to topics which are entirely outside its purview and mandate.

As people have already said, we are a global community, we shouldn't position ourselves in defense of any specific geopolitical order. So arms manufacturers are most likely out, by definition -- but not based on whom they purport to "defend" with their weapons. 

Therefore, i think https://github.com/NixOS/foundation/pull/140 could be superseded by the more general heuristic above, but in the interest of incremental progress, to the question

>Are you in favor of https://github.com/NixOS/foundation/pull/140 (yes or no answers only for this specific question, please).

I would answer yes.

</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2396277106">link</a>)</summary>

Personally yes, I think it should. I think NixOS on the desktop is one of the on-ramps for a lot of people (it certainly was for me), so having a polished and coherent story around that would IMO be great for adoption. People who gravitate towards something like NixOS on their desktop IME tend to be software engineer/DevOps types, who might then want to use it at work as a server distribution, spreading the buzz and fomenting ecosystem growth.

That said, I think what's more important is that the SC comes up with a strategic vision for the next couple of years. If that includes a better story for NixOS on the desktop I'll be pretty happy, but I don't think it's the only good such vision (vs e.g. a primary focus on NixOS as a server distribution)
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2396342649">link</a>)</summary>

I align pretty strongly with copyleft, since I prefer to view our collective efforts as a [digital commons](https://en.wikipedia.org/wiki/Digital_commons_%28economics%29) -- something that entails both use rights but also obligations to contribute back, because it is collectively owned.

That said, Nix and Nixpkgs are MIT, there is basically no way to change that, and I personally have no plans to even attempt.

I think when choosing between a copyleft and a permissive license though, it's important to look at the nuances. The question of individual freedoms is central in distinguishing these two groups of licenses, but I think it's only half of the solution to the "political" problem of how to sustain a digital commons: the other part is the material conditions, i.e. ensuring people can provide for their own basic needs, which in our current system means allowing them to earn a living. The insufficiency of the traditional licenses' freedom-focused approach to address the "economic" question is also reflected in the deluge of products creating their own non-FLOSS licenses (SSPL and co.).

Permissive licenses like MIT, being more business-friendly, can theoretically, in some specific contexts, be a net positive for the health of an ecosystem (and especially its maintainers), if by attracting those businesses they help contributors/maintainers get funded.

In my ideal world, we would all have our basic needs met and could freely contribute to the commons (both digital and material) but we're not there yet, so we need to be strategic.

When it comes to how we, as a community, decide to package/support non-free software, I think we're doing great by not being too dogmatic, and strive for being a generally useful distribution/ecosystem. I think people can be politicized into useing FLOSS without making their life overly hard.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2396261781">link</a>)</summary>

I don't have experience being in a position of power in a large organizations. I do have experience participating in political groups, as well as an education in political sciences, which gave me valuable lessons, both theorical and practical, about power (dynamics), ethics and justice. I've also worked with tools of consensus decision-making, non-violent communication and active listening. I imagine those would be useful too :)
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2396684136">link</a>)</summary>

As I mentioned in my [candidate form](https://github.com/NixOS/SC-election-2024/blob/main/candidates/asymmetric.md) think it's super important to define, basically, a finite-state machine, with clear states and clear transitions, around a "Platform", defined by the [OCaml project](https://ocaml.org/platform) as

> a coherent set of tools, documentation, libraries, and testing resources

This would help in a few ways:

- Help us determine where to allocate our finite resources: declaring that a project is in a given state comes with support requirements, in the form of stability, documentation, polish, backwards-compatibility, etc
- Set expectations for users
- Indicates to interested parties where we need help, and what kind of help (e.g. funding, or greenfield experimentation, or  stabilization)
- Clarify how a project transitions to a next state, e.g. towards stabilization or deprecation.

Now this is all well and good, but how do we go about this? A first step in this direction has [already been started](https://discourse.nixos.org/t/call-for-volunteers-curating-official-projects/45382/11). The SC should put its energies behind this effort, and clarify questions like "what does it mean for a project to be official".

I don't think this is going to be a quick and easy job, especially for the first round of SC nominees, so part of this cohort's job will be to discover, establish and document processes for slowly converging towards this goal.
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2395494060">link</a>)</summary>

As a candidate, I don't have a particularly informed technical opinion on this. I also don't think the Steering Committee should directly intervene on specific technical decisions -- it should instead [defer and delegate](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#distribute-decisionmaking-widely) to domain experts who have the knowledge and authority to make such choices. 

What I do think is important is that we come to an agreement over what features we want to prioritize, and then actually prioritize them. I find it frustrating that in our ecosystem "experiments" tend to drag along for so long, with no clear path to stabilization.

So in this sense, my only strong opinion on CA derivations is that we should figure out where they sit on our official list of priorities, and allocate resources accordingly.
</details>

### Financial support for maintainers ([link](https://github.com/NixOS/SC-election-2024/issues/108))


Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/108#issuecomment-2396557500">link</a>)</summary>

In my opinion this should be one of the main priorities of the SC. By this I mean: creating a roadmap around key features, then finding out partners (ideally public, but of course also private) who are willing to sponsor the maintainers doing most of the work (and/or employing them directly), potentially with the Foundation as an intermediary for those funds.

I don't think it would be fair, nor sustainable, to primarily ask volunteer maintainers to shoulder the burden of a multi-year plan. I think as a community and as a project we have (long) outgrown the stage where it's all just a labor of love.

People are already building careers around their Nix expertise, so I think we should lean into this stage, and create the right conditions to attract stable funding: a clear roadmap, well-scoped teams, good internal processes for defining what's in scope for official projects, clear funding guidelines (e.g. let's avoid corporate capture by not letting those who fund us dictate the project's roadmap).
</details>

## Unanswered questions
<details>
<summary>Should Nix transition away from GitHub to a self-hosted git forge? (<a href="https://github.com/NixOS/SC-election-2024/issues/18">link</a>)</summary>

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?
</details>
<details>
<summary>What are your thoughts about flake stabilization? (<a href="https://github.com/NixOS/SC-election-2024/issues/112">link</a>)</summary>

Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?
</details>
<details>
<summary>Should Nix self-host the binary cache? (<a href="https://github.com/NixOS/SC-election-2024/issues/19">link</a>)</summary>

Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?
</details>
<details>
<summary>Should `nix-community` fall under formal governance? (<a href="https://github.com/NixOS/SC-election-2024/issues/11">link</a>)</summary>

Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?
</details>
<details>
<summary>Opinions about scaling down nixpkgs (<a href="https://github.com/NixOS/SC-election-2024/issues/98">link</a>)</summary>

Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?
</details>
<details>
<summary>What is your vision for the future technical direction of Nix? (<a href="https://github.com/NixOS/SC-election-2024/issues/50">link</a>)</summary>

What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?
</details>
<details>
<summary>What constitutional changes would you advocate for and why? (<a href="https://github.com/NixOS/SC-election-2024/issues/35">link</a>)</summary>

If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?
</details>
<details>
<summary>What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? (<a href="https://github.com/NixOS/SC-election-2024/issues/34">link</a>)</summary>

What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?
</details>
<details>
<summary>How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? (<a href="https://github.com/NixOS/SC-election-2024/issues/7">link</a>)</summary>

What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?

</details>
<details>
<summary>What's the best way for the steering committee to deal with inaction or being ignored? (<a href="https://github.com/NixOS/SC-election-2024/issues/114">link</a>)</summary>

One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?

</details>
<details>
<summary>What is your plan on improving the darwin PR situtation? (<a href="https://github.com/NixOS/SC-election-2024/issues/97">link</a>)</summary>

Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?
</details>
<details>
<summary>Do you believe that one of the core principles of NixOS is its declarative approach?  (<a href="https://github.com/NixOS/SC-election-2024/issues/9">link</a>)</summary>

If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 
</details>
<details>
<summary>What are your thoughts on adding analytics or crash/error reporting to `nix`? (<a href="https://github.com/NixOS/SC-election-2024/issues/122">link</a>)</summary>

Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?

</details>
<details>
<summary>What are your thoughs about eventually merging core with Guix? (<a href="https://github.com/NixOS/SC-election-2024/issues/116">link</a>)</summary>

Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?
</details>
<details>
<summary>What are your thoughs about bringing Grafts to Nix? (<a href="https://github.com/NixOS/SC-election-2024/issues/115">link</a>)</summary>

Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/
</details>
<details>
<summary>Actions on ecosystem fragmentation? (<a href="https://github.com/NixOS/SC-election-2024/issues/89">link</a>)</summary>

There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?
</details>
<details>
<summary>How will you help decrease the number of open PRs in Nixpkgs? (<a href="https://github.com/NixOS/SC-election-2024/issues/84">link</a>)</summary>

With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?

</details>
<details>
<summary>What are your thoughts on cross-compilation? (<a href="https://github.com/NixOS/SC-election-2024/issues/121">link</a>)</summary>

What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?
</details>
<details>
<summary>Bootstrappability and independence from binary sources (<a href="https://github.com/NixOS/SC-election-2024/issues/119">link</a>)</summary>

What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?
</details>
<details>
<summary>How can we improve UX? (<a href="https://github.com/NixOS/SC-election-2024/issues/109">link</a>)</summary>

We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?
</details>
<details>
<summary>How will you improve transparency and accountability in Nix governance? (<a href="https://github.com/NixOS/SC-election-2024/issues/48">link</a>)</summary>

What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?
</details>
<details>
<summary>What your thoughs about a NixOS-like thing for clusters? (<a href="https://github.com/NixOS/SC-election-2024/issues/117">link</a>)</summary>

A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?
</details>
<details>
<summary>What are your thoughs about integrating distributed stores into Nix? (<a href="https://github.com/NixOS/SC-election-2024/issues/113">link</a>)</summary>

AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?
</details>
<details>
<summary>What is your opinion on garbage collecting the cache (<a href="https://github.com/NixOS/SC-election-2024/issues/96">link</a>)</summary>

The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.
</details>
<details>
<summary>How should we go about backwards compatibility? (<a href="https://github.com/NixOS/SC-election-2024/issues/81">link</a>)</summary>

Currently, we seem to be promising compatibility for stable branches, but in new releases, we are allowed to break "if necessary". Where do you think the line of "if necessary" should fall?

How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

Can you answer specifically about NixOS module options, as well as generally for nix community projects?

[1] ["There are only two ways to change software: growing it and breaking it. We don't break."](https://www.youtube.com/watch?v=oyLBGkS5ICk&t=1189s)
</details>
<details>
<summary>How will you ensure the financial sustainability of Nix without compromising its values? (<a href="https://github.com/NixOS/SC-election-2024/issues/47">link</a>)</summary>

How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?
</details>
<details>
<summary>What do you believe is the most pressing technical issue facing Nix, and how will you address it? (<a href="https://github.com/NixOS/SC-election-2024/issues/16">link</a>)</summary>

What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?
</details>
<details>
<summary>How will you ensure community engagement and participation in SC decisions? (<a href="https://github.com/NixOS/SC-election-2024/issues/12">link</a>)</summary>

How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?
</details>
<details>
<summary>Forge agnosticism (<a href="https://github.com/NixOS/SC-election-2024/issues/120">link</a>)</summary>

What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?
</details>
<details>
<summary>Should NixOS/nixpkgs adjust its platform support? (<a href="https://github.com/NixOS/SC-election-2024/issues/106">link</a>)</summary>

Of the currently supported platforms, are there any you think should be promoted to a higher tier or demoted to a lower tier? Are there any currently entirely unsupported platforms which should gain some level of support?

(bit of overlap with #97 with re: darwin specifically)
</details>
<details>
<summary>Which candidates would you like to work with on the Steering Committee? (<a href="https://github.com/NixOS/SC-election-2024/issues/101">link</a>)</summary>

If elected to the Steering Committee, which other candidates would you prefer to work with, and why?
</details>
<details>
<summary>Securing contribution possibilities (<a href="https://github.com/NixOS/SC-election-2024/issues/118">link</a>)</summary>

What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?
</details>
