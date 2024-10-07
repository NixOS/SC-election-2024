- Name: Sefa Eyeoglu
- GitHub handle: Scrumplex
- Email address: contact@scrumplex.net
- Discourse handle: Scrumplex
- Matrix handle: @Scrumplex:duckhub.io

### Conflict of interest disclosure

Most of the work I have done in the Nix community has been for personal
use. My employer does not promote the use of Nix (yet), though my team
and I do use Nix in a limited capacity. I am working at Deutsche
Telekom IT GmbH, a subsidiary of Deutsche Telekom AG.

### Motivation to be on the Steering Committee

I use Nix, Nixpkgs and NixOS every day, both personally and
professionally. As a regular Nixpkgs contributor, I want our community
to be happy with the decisions the foundation takes, so I decided to
apply as a candidate to the Steering Committee.

#### What I have done

Prior involvement in governance of FOSS projects:

- (Former) maintainer and community manager of the Prism Launcher
project [[prismlauncher]]
    - I was one of the core maintainers of the PolyMC project, a FOSS
Minecraft launcher. Early on, I have introduced the Contributor
Covenant code of conduct into the project, despite the resistance of a
maintainer and a former maintainer. Additionally, I have set up
transparent and sustainable funding using Open Collective and Open
Source Collective. There were some disagreements between one of the
maintainers and the rest of the team in October 2022 which caused a
takeover of the project by that one maintainer and the exclusion of the
remaining maintainer team. This led to the creation of a fork called
Prism Launcher. I have played an instrumental role in creating the
community around Prism Launcher and remain in the maintainer team to
this day. Since then, we have had many new maintainers as well as
several maintainers who have stepped down as they lost interest. While
I take a mostly passive role development-wise nowadays, most
operational tasks are usually done by me. [[gol-prism]] [[pcgamer-prism]]

- Applied as a specialised contributor in the NixOS Foundation
constitutional assembly [[nca-application]]

Ecosystem Contributions:

- Nixpkgs: 147 merged, 12 open [[nixpkgs-merged]][[nixpkgs-open]]
  - pnpm.fetchDeps - Tooling for Node.js packages that use pnpm
[[nixpkgs-pnpm]]
  - nixos/monado: NixOS module for enabling and configuring Monado, a
FOSS OpenXR runtime [[nixpkgs-monado]]
  - discord: add option to install Vencord [[nixpkgs-vencord]]
- Home Manager: 12 merged, which include several new modules
- [nix-community/nixpkgs-xr][nixpkgs-xr] Automated nightly packages for
several AR/VR/XR tools and applications

#### What I'll do

- Implement a Nix Ecosystem Incubation program akin to CNCF's
incubation program
  - Currently, the Nix ecosystem is quite scattered. While there is
nix-community that serves as an inofficial incubator, there is no clear
process for promoting these into Nixpkgs/NixOS.
- Make extending and reusing tooling of Nixpkgs easier
  - Many community projects have to write their own boilerplate code
just to expose a package set to users. Tooling like the `by-name-
overlay.nix` is not officially exposed an API in Nixpkgs, even though
it would be very useful for downstream Flakes/expression repositories. 
  - By reusing tooling from Nixpkgs, it will be easier to incubate and
eventually upstream these community projects into NixOS/Nixpkgs
- Implement transparent decision-making
  - NixOS should be governed with oversight from the community. The
foundation board as well as Steering Committee (SC) members should be
held accountable for their decisions. To facilitate that, all major
decisions should be made in a highly visible manner. This can be
achieved by making communication channels of the SC publicly viewable.
  - The SC should actively gather community feedback for upcoming
decisions.
- Implement a mentorship system to help regular contributors become
maintainers

[gol-prism]:
https://www.gamingonlinux.com/2022/10/if-you-use-polymc-for-minecraft-you-should-switch-away-now/
[pcgamer-prism]:
https://www.pcgamer.com/minecraft-launcher-project-spins-out-of-control-after-dev-hijacks-it-to-fight-leftist-queer-ideology/
[hm-merged]:
https://github.com/nix-community/home-manager/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3AScrumplex+is%3Amerged
[hm-open]:
https://github.com/nix-community/home-manager/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aopen+author%3AScrumplex
[nca-application]:
https://nixpkgs.zulipchat.com/#narrow/stream/436732-Constitutional-assembly-applications/topic/Sefa.20.2F.20Scrumplex
[nixpkgs-merged]:
https://github.com/NixOS/nixpkgs/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3AScrumplex+is%3Amerged
[nixpkgs-monado]: https://github.com/NixOS/nixpkgs/pull/245005
[nixpkgs-open]:
https://github.com/NixOS/nixpkgs/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aopen+author%3AScrumplex
[nixpkgs-pnpm]: https://github.com/NixOS/nixpkgs/pull/290715
[nixpkgs-vencord]: https://github.com/NixOS/nixpkgs/pull/229173
[nixpkgs-xr]: https://github.com/nix-community/nixpkgs-xr
[prismlauncher]: https://github.com/PrismLauncher/PrismLauncher
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2389766571">link</a>)</summary>

No. Being on GitHub benefits NixOS massively, because of discoverability, tooling and ease of use.

If you consider that people nowadays learn how to use GitHub before they learn Git (if at all), I think we would lose a large pool of potential contributors by switching to a different codeforge. I personally host my own projects on [Codeberg](https://codeberg.org), but with the expectation that those projects will not see much foot traffic.

In a project I was involved in previously ([Prism Launcher](https://github.com/PrismLauncher)) this question also came up. Discoverability and GitHub Actions (and its public runners) were the primary pain points there. In the case of NixOS/nixpkgs, I think actions runners are not too important, but discoverability and visibility definitely are.

This would also present a chicken-and-egg problem. Many Nix tools are made with GitHub in mind and moving projects away from GitHub would mean we would lose some tooling temporarily until they get adapted to the new codeforge.
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2389722581">link</a>)</summary>

> What is your stance on sponsorships within the Nix community

I think sponsorships are great as they provide funding to the project. I think we should try our best not to be reliant on a single sponsor, as there is always a risk of them retracting their sponsorship.

> particularly in light of the controversy surrounding military-industrial companies

I am opposed to sponsorships from military-industrial companies, companies extracting or processing fossil fuels and generally industries that are not sustainable ecologically or socially. While it might be enticing to take these sponsorships for additional funding, companies that are involved in exploitation, be it of our planet or people, are strictly against our common values.

> How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values?

If the SC and the board can't reach an agreement, I support @getchoo's proposal to hold a community vote.

> Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).

Yes
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2389752114">link</a>)</summary>

I think copyleft free software licences are superior to permissive licences, as they ensure that software will be freely available perpetually. Though I personally value user choice over software licences. Therefore, Nix/nixpkgs/NixOS should continue to distribute all kinds of software, as long as (re-)distribution is permitted.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2389737023">link</a>)</summary>

> Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

No. Object storage is an economy of scale, especially when you factor in multi-tiered storage. Hosting the cache ourselves is not just going to be a high upfront investment of buying the hardware, but it's also going to require much more maintenance in the future.

Now I don't think AWS is ever going to be the cheapest option out there either. If we take inspiration from other distros, I think the NixOS Foundation should promote third-party mirrors of the cache. I think something like a pull through cache would be good enough to mirror the Cache. `cache.nixos.org` could act as a broker to redirect requests to local cache mirrors.

Another approach would be to use something decentralized, as @tomberek mentioned above. Obsidian Systems has developed IPFS support for Nix a few years ago, which seemed interesting. (See https://github.com/obsidiansystems/ipfs-nix-guide)

In general, we definitely need better tooling to share store paths locally. In my case, I am running Harmonia on a local server and copy closures to it when I plan to use them on multiple machines. Having some kind of peer to peer cache would probably work much better and reduce load on `cache.nixos.org`.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2389758707">link</a>)</summary>

No. I think it might be a great way to incubate projects into eventually becoming official, but I think nix-community as a whole should not become part of the NixOS umbrella. A big advantage of nix-community projects over official ones is rapid development. nix-community allows people from the community to work on more experimental projects without having to pass the usual review process of nixpkgs.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2389705113">link</a>)</summary>

> Do you believe that one of the core principles of NixOS is its declarative approach?

Yes

> If so, should NixOS strive to further minimize state and enhance its declarativity in the future?

Obviously there is only so much you can do to achieve this in the real world. Sometimes state is useful (i.e. allowing NixOS to know which UIDs/GIDs have been used before) and other times it is mandatory (like with a database).

I think the challenge is to find a balance between stateful and stateless configuration. For example I think it would be great if I could configure Postgres users and databases using a stateless and declarative configuration instead of a convergent one (see https://github.com/NixOS/nixpkgs/issues/206467). But I would argue that this is a non-trivial problem and wouldn't really be something that the SC should specifically work on.
</details>

## Unanswered questions
<details>
<summary>What are your thoughts about flake stabilization? (<a href="https://github.com/NixOS/SC-election-2024/issues/112">link</a>)</summary>

Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?
</details>
<details>
<summary>Should Nix Have a Home Management System? (<a href="https://github.com/NixOS/SC-election-2024/issues/83">link</a>)</summary>

Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?

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
<summary>Experience (<a href="https://github.com/NixOS/SC-election-2024/issues/104">link</a>)</summary>

What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)
</details>
<details>
<summary>How do you plan on making community projects official? (<a href="https://github.com/NixOS/SC-election-2024/issues/99">link</a>)</summary>

What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89
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
<summary>What are your thoughts on ca-derivations? (<a href="https://github.com/NixOS/SC-election-2024/issues/111">link</a>)</summary>

What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?
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
<summary>Financial support for maintainers (<a href="https://github.com/NixOS/SC-election-2024/issues/108">link</a>)</summary>

Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?
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
