- Name: Robert Hensing
- GitHub handle: @roberth
- Email address: robert@roberthensing.nl
- Discourse handle (optional): @roberth
- Matrix handle (optional): @roberthensing:matrix.org

### Conflict of interest disclosure

- I fully own [Hercules CI](https://hercules-ci.com), so no venture capitalists are involved in decision making.
  - Hercules CI is a continuous integration and delivery service tailored for small software businesses. It is a small operation with no intention or ability to control a free and independent community like that around Nix.
- I consult for Procolix on the Fediversity project.
  - A fully open source initiative aimed at making Nix-based hosting of fediverse projects more accessible and production-ready. Their leadership prioritizes not only their own open source but supporting their upstream and fostering a healthy ecosystem of open source software and service providers, to ensure the fediverse's long-term success.

### Motivation to be on the Steering Committee

I was surprised to see a number of endorsements without detailed platforms, which motivates me to step up and honor the trust people have placed in me.

#### What I have done

My first contribution was in 2016, #17618. I've done a bit of packaging, but most of my efforts can be characterized as programming tasks instead of packaging.
Many of my efforts stem from identifying pre-existing problems when reviewing other contributors' PRs.

I have been maintaining non-package parts of Nixpkgs, such as the Module System (in collaboration with @infinisil), reviewing contributions for `dockerTools` and `lib`, and maintaining the NixOS and Nixpkgs entrypoints. For example, I made the `nixosSystem` `system` parameter optional.

Since being invited onto the Nix team in 2022, I have worked the team to transform Nix (the package manager) from an understaffed bus factor 1 project to a collaboratively maintained project. Examples of contributions are
  - Identifying areas of Flakes that need work before its stability can be committed to sustainably, and work on such fixes in and around `fetchTree`, which is an essential part of Flakes.
  - Fixes to avoid evaluator crashes, and a few long standing "papercuts"
  - Reviews of RFC 92 Dynamic Derivations PRs by John Ericson

#### What I'll do

*Community*

I want the community to thrive. We need to make clear decisions towards inclusivity and move forward. Everyone should feel welcome and accepted here. A tech community is a place to collaborate, find common ground, and - if you wish - make friends.

That said, we must recognize that software is not free from politics. The reality is that people have made people political, and software is a human endeavor.
Being part of this community means accepting other humans for who they are, and acting with mutual respect.

*Ethics*

Sponsorships are not merely donations; they entail benefits such as advertising and imply a form of partnership. Given the global nature of our community, we are committed to ethical sponsorship practices.

Therefore, we will reject sponsorships from entities that engage in harmful activities, including but not limited to military institutions, defense contractors, and companies involved in the production of weapons, surveillance equipment, or mass surveillance software. We will review and update this exclusion list to cover other harmful products and practices, with input from the community.

We do not seek to exclude individuals from participating in the NixOS community based on their employment, except in cases where individuals explicitly promote or advertise their employer in a manner that contradicts our ethical guidelines.

The foundation will accept donations only without stipulation, or if earmarked for pre-existing, approved projects. No new projects will be funded solely by targeted donations unless they align with the foundation's goals and receive prior approval.

To safeguard the integrity and independence of the foundation, we will ensure that neither the foundation nor the community becomes financially dependent on a single company, organization, group, individual, or sector. This principle is critical to maintaining the autonomy and neutrality of the NixOS project.

*Technology*

I've contributed to key areas of the Nix ecosystem, which has given me a good understanding of various aspects of it.

However, I see the role of the Steering Committee as representing the community first and helping the community to clarify its direction, and supporting it.

Therefore I believe it is essential that we source input from the community first, so that we can get a more accurate overview and effectively prioritize and plan.

One of our strengths as a community is the diversity not just of ourselves but in our efforts, which has allowed us to build the largest repository of packages. We should cherish this approach, but also recognize its limits when it comes to other important goals.

With the Steering Committee, I aim to ensure that we are setting priorities based on community feedback and mobilizing external resources, such as funding to support our projects.

## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2395575904">link</a>)</summary>

If a group of people with spare time want to create an alternate non-GitHub workflow, and it works well, we could do it.
I would not invest my time or actively support such a project though, because of the significant time cost.
If Microsoft becomes hostile, the switch will be more valuable and easier for everyone to accept. They aren't much of a risk to the project today or in the near future.
The GitHub-based workflow should stay supported for the following reasons:
- Network effects
  - Virtually everyone has a GitHub account, so contributing is easy
  - Many thousands of automatic backlinks from upstream issues to ours
  - Visibility in GitHub's stats
- Free moderation. The moderation team is already short-staffed; let's not make them also responsible for handling low-level spam, etc, that's done by GitHub now.
- Redundancy. This actually lets the alternate forge setup iterate more freely.
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2395584541">link</a>)</summary>

Sponsorships are not merely donations; they entail benefits such as advertising and imply a form of partnership. Given the global nature of our community, we must commit to ethical sponsorship practices.

Therefore, we will reject sponsorships from entities that engage in harmful activities, including but not limited to military institutions, defense contractors, and companies involved in the production of weapons, surveillance equipment, or mass surveillance software. We should review and update this exclusion list to cover other harmful products and practices, with input from the community.

Note in particular the exclusion of military/affiliated organizations. This has been a topic of controversy before.
We can't let such an affiliation create division in our community, which is global, and whose members some may find themselves on the other end of a conflict.
(And I would recommend not to judge people for working in defense. Unfortunately, you can't have freedom without deterrence and defense, and the world needs _good people_ inside the organizations that provide and/or control this dangerous power.)


We should not seek to exclude individuals from participating in the NixOS community based on their employment, except in cases where individuals explicitly promote or advertise their employer in a manner that contradicts our ethical guidelines.

EDIT: Forgot to explicitly conclude that I would answer yes - merge the PR.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2395542593">link</a>)</summary>

Stabilization implies a long term promise that includes the stability of the hashes produced by Nix. This has wide ranging consequences that make it even harder to fix the numerous issues with Flakes.

As a member of the Nix team I would consider supporting a statement that Flakes are ok to adopt, but with a carve-out for minor changes to such things as CLI flags and changes for the sustainable stabilization of `fetchTree`, and limited forward compatibility for the lock file; e.g. you may have to update Nix within 7 months in order to accept lock files from newer Nix releases.

I question the technical value of such a statement, but it could help inform users' decisions.

If you want Flakes to stabilize sooner, and you don't mind getting into the nitty gritty of fetching, locking, or the CLI UX, please get in touch with the Nix team. :heart:
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2395568492">link</a>)</summary>

As said, it already does, in the form of Home Manager, and that's great.

Perhaps something could be optimized about the installation process and/or the CLIs, but putting the `nix` command between Home Manager and its users would only serve to stifle Home Manager's ability to improve its own command.

I don't know how Debian works anymore, but I don't think Debian users consider themselves primarily `dpkg` users, so then why should Home Manager users have to use it through `nix`?
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2395571666">link</a>)</summary>

Self hosting may be a good option, when we have a good plan. Funding a self-hosted replacement for the S3 part of the solution _shouldn't_ be a problem, considering our large user base and perhaps even the EU's "digital sovereignty" goals.

As far as I know, we're still looking into multiple options, so I see no reason to take self-hosting off the table, but it does need a good plan.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2395553090">link</a>)</summary>

We have sufficient means to better deal with the volume of packages, briefly:
- Add support support tiers in `meta`
- Update-automation and CI improvements
- RFC 92 dynamic derivations so that lock files can be FOD-fetched instead of copied into Nixpkgs, and fetched granularly - efficiently.
- S3 replacement

As far as I know, not spending enough is currently still a bigger issue than funding.
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2395511421">link</a>)</summary>

The community is already on a good trajectory; we have already started many good initiatives that improve the user experience and developer experience. Usually the problem is *actually finishing* such projects. This can be hard when everyone is half-responsible for too many things. This could be improved by encouraging contributors to limit themselves to fewer areas of interest and encouraging collaboration.

Over time I have documented many issues and proposals in GitHub issues for Nixpkgs and Nix. I'll list a few things that are on my mind, but more importantly, we should decide a roadmap _together_.
- [Packages as a language level concept using derivation outputs instead of whole derivations](https://github.com/NixOS/nix/issues/6507)
- Dynamic derivations (RFC 92) so we can stop adding lock files to Nixpkgs, and improve the granularity/incrementality of Nix builds, making Nix builds more suitable for development workflows (as @tomberek also suggests, Nix has great potential here and it should benefit everyone)
- [Reduce the number of fixed points per package](https://github.com/NixOS/nixpkgs/pull/296769) to resolve long standing tech debt, bugs and UX issues

However, more structural benefits will come from improving the development experience / contributor experience, testing and automation.
- Improve OfBorg to find tests more reliably for non-package changes such as modules
- Look into whether the build farm can be expanded (both OfBorg and Hydra)
- Improve the merge bot (e.g. something like `meta.mergeCriteria` so packages can opt in to fully automated updates)
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2395538915">link</a>)</summary>


Regarding the original topic of inaction, I would like to refer to Tom's above comment and agree.


**Regarding activism**

The Steering Committee is meant to represent the community, democratizing governance.
Democracy isn't just one thing. Activism is a last resort of sorts, and we would be having this discussion if it wasn't for the activism of those opposed to the foundation's choices.
I would encourage the Steering Committee to enter dialogue with their opponents, be respectful to them, and foster a respectful and truthful democratic culture.
That said, in a sufficiently diverse community, we will have differences of opinion and activism every now and then. That is all part of the democratic process, and in some cases, the SC may have to carefully weigh the arguments and decide that it's best to decide, so that the community can move forward and not be hijacked by an issue that isn't important to the community at large.

In the worst case, the community gets another chance at the next election, possibly creating a majority for their issue within the year. That is again a last resort, but I am confident that the Steering Committee will do a better job at listening to the community than the previous leadership did. I wouldn't mind calling for a reelection if need be.
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2395555258">link</a>)</summary>

We have ~80 [darwin team members](https://github.com/orgs/NixOS/teams/darwin-maintainers). That's too much to ping all at once, but I'm sure they've joined to be pinged nonetheless.
This smells like a tooling or communication problem.
A low tech solution may be to add them to `meta.maintainers` when the opportunity arises?
```nix
maintainers = [
  roberth
  # darwin maintainers:
  getchoo
];
```

That doesn't solve all the annoyances, but it could start to streamline the packages that have it, just by making clear who can help.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2395564771">link</a>)</summary>

I don't think the cost/benefit even make sense, besides the obvious privacy concerns and enterprise-ism.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2395530561">link</a>)</summary>

I support the componentization of Nix.
It solves unique problems in what's currently a fairly monolithic product, in a single repo, with somewhat of a single team and community responsible for maintenance and innovation.
I would support further componentization of Nix, which would allow not just for better ownership and innovation in those components, but also allow those components to be reused in Nix-like implementations such as Guix.
We shouldn't have to push Guix to adopt our libstore; we could make it excellent and then it's up them to make the call, and we should support them if they choose to adopt it.

I believe this is a good strategy regardless of what Guix wants, because it allows to grow a community of multiple tools that benefit from well maintained components, and it allows more radical innovation without having to fork everything.
</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2395560415">link</a>)</summary>

Fragmentation could be beneficial when it leads to more choice, more participation, more innovation.
However, it can also lead to division and worse interoperability.

I think this is a question for everyone who participates in these projects. We all want the best for our projects' users, so it should be logical to communicate and collaborate where possible. This can only be stimulated, not imposed.

Perhaps the formation of standards and specifications could be supported by the SC. This would provide many opportunities to collaborate.
</details>

### What are your thoughts on cross-compilation? ([link](https://github.com/NixOS/SC-election-2024/issues/121))


What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/121#issuecomment-2396418104">link</a>)</summary>

Cross compilation works without virtualization: Nixpkgs configures the compilers to produce code for a different "host" platform than the "build" platform, which is where the compiler runs. Virtualization would only be "needed" when testing the output, which a cross-Nixpkgs does not do. 

- Yet. https://github.com/NixOS/nixpkgs/issues/347053

Cross outputs can then be tested by OfBorg when its build farm is [configured to have remote builders](https://github.com/NixOS/infra/issues/439).

I think it's amazing that Nix can take advantage of the speed of an alternate `buildPlatform`, but still test the execution of those build products on underresourced machines (such as slow hardware, rare/expensive hardware, or emulated VMs), making the best use of them, all within the same derivation graph, and even when building on platforms that don't have pluggable executable loaders like Linux binfmt_misc.

As a matter of practicality, the adoption of these cross changes should be a gradual process, just like the rollout of `strictDeps` - not an implement to whack our co-maintainers with, but something people who care about cross can _help_ with.
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2395521549">link</a>)</summary>

From what I've heard the work to do this in Nix is basically done, but yet to be incorporated into Nixpkgs.

This seems like an "obviously good" improvement to me, and I don't think it would be controversial at all.
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2395544886">link</a>)</summary>

`ca-derivations` would be beneficial to resource use, and it is always good to complete a feature.

However, as a member of the Nix team, I have noticed little interest in actually completing this feature, whether that's me, the other team members or the community, though I may well be wrong about the latter, if they are actually interested in contributing to `ca-derivations`.

The progress of this feature is somewhat unclear to me, because [the `ca-derivation`s milestone](https://github.com/NixOS/nix/milestone/35) is a recent addition to the issue tracker (not while the feature was initially developed), and it is still very very incomplete. A good first step would be to curate the issues. The Nix team could use your help with that; contact us if you're interested in this.
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2395513948">link</a>)</summary>

This thread already has good suggestions. I would be careful not to generate too large an amount of information for the community to consume. For instance, while I like the office hours idea, this runs a risk of "losing" information because it is either not recorded at all, or the recordings aren't worth listening/watching because they take too long.

I think it is important not just to record everything, but also to produce good notes and to document its decisions in a concise, up to date and accessible way.

In fact, this is the most important output of the SC, so I would encourage a culture that values this. I want this to be felt as the purpose of each meeting.
</details>

### What your thoughs about a NixOS-like thing for clusters? ([link](https://github.com/NixOS/SC-election-2024/issues/117))


A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/117#issuecomment-2395525957">link</a>)</summary>

This is a rather technical matter, but I like it, and I believe this can and should be done when we have better CI and testing infrastructure to pick and choose NixOS module sets in more than the (more or less) one traditional way.

Perhaps the SC could serve a small role by polling interest and connecting people, but ideally we enable everyone to organize these things themselves instead; make _that_ really easy.
</details>

### Financial support for maintainers ([link](https://github.com/NixOS/SC-election-2024/issues/108))


Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/108#issuecomment-2395548744">link</a>)</summary>

Just throwing foundation money at maintainers runs a risk of bias, or even the distribution of this funding to be _perceived_ as biased, so I would go about this very carefully. Perhaps a better angle is to improve the assignment of responsibilities, and letting companies sponsor maintenance (with employee time, contract like, or whatever works for them), in exchange for a badge they can put on their website "careers"/"about"/"giving back" page or wherever. Again, this kind of thing needs to be considered with diligence.

We do have areas where help is much wanted, in ways that are more "unbiased" or fair, such as the management of releases, staging, testing, infrastructure, etc. Investing here will show results that we can use to enable more funding, and it will free up volunteer time and energy in the other areas, such as specific packages.

</details>

### Forge agnosticism ([link](https://github.com/NixOS/SC-election-2024/issues/120))


What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/120#issuecomment-2395520597">link</a>)</summary>

We need to be very careful about forge integrations, because the built-in fetcher implementations must guarantee their own reproducibility, and fetching Git sources correctly is actually non-trivial because of the impure features. Especially `git archive` includes behaviors that are impure, and it  tends to be the backend for forge-specific endpoints and fetchers. This is the main reason why the Nix team hasn't managed to complete the stabilization of `fetchTree` yet, because we haven't addressed all impurities yet.

With `fetchTree` stability being a prerequisite for Flakes stability, this is one of the reasons we still haven't delivered stable Flakes yet.
</details>

### Securing contribution possibilities ([link](https://github.com/NixOS/SC-election-2024/issues/118))


What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/118#issuecomment-2395524513">link</a>)</summary>

Hi @zeuner, I feel like this is a very broad question, or maybe I'm missing some context.

Nixpkgs is generally very accepting of various quirks, whether that's packaging unfree software, supporting niche platforms, etc.
I would not support an overly strict removal policy, in favor of managing expectations with `meta` attributes.

I don't see any reason to lock out contributors other than moderation; socially unacceptable behavior. If you behave respectfully, I see no reason for trouble.

https://github.com/NixOS/rfcs/pull/180 does introduce a policy for unmaintained packages and broken packages; conditions which are avoidable, so I don't think this would be a problem either.
</details>

## Unanswered questions
<details>
<summary>How strongly do you align with Copyleft and FLOSS principles? (<a href="https://github.com/NixOS/SC-election-2024/issues/28">link</a>)</summary>

How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.
</details>
<details>
<summary>Should `nix-community` fall under formal governance? (<a href="https://github.com/NixOS/SC-election-2024/issues/11">link</a>)</summary>

Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?
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
<summary>Do you believe that one of the core principles of NixOS is its declarative approach?  (<a href="https://github.com/NixOS/SC-election-2024/issues/9">link</a>)</summary>

If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 
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
<summary>How will you help decrease the number of open PRs in Nixpkgs? (<a href="https://github.com/NixOS/SC-election-2024/issues/84">link</a>)</summary>

With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?

</details>
<details>
<summary>How can we improve UX? (<a href="https://github.com/NixOS/SC-election-2024/issues/109">link</a>)</summary>

We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?
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
<summary>Should NixOS/nixpkgs adjust its platform support? (<a href="https://github.com/NixOS/SC-election-2024/issues/106">link</a>)</summary>

Of the currently supported platforms, are there any you think should be promoted to a higher tier or demoted to a lower tier? Are there any currently entirely unsupported platforms which should gain some level of support?

(bit of overlap with #97 with re: darwin specifically)
</details>
<details>
<summary>Which candidates would you like to work with on the Steering Committee? (<a href="https://github.com/NixOS/SC-election-2024/issues/101">link</a>)</summary>

If elected to the Steering Committee, which other candidates would you prefer to work with, and why?
</details>
