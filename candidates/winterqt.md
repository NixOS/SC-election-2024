- Name: Winter
- GitHub handle: [winterqt](https://github.com/winterqt)
- Email address: `"nixos@" + name + ".cafe"`
- Discourse handle: [winter](https://discourse.nixos.org/u/winter)
- Matrix handle: `@winter:catgirl.cloud`

### Conflict of interest disclosure

I'm an employee of [OrbStack](https://orbstack.dev), a company that develops a product with a paid feature that utilizes Nix(pkgs).

### Motivation to be on the Steering Committee

#### What I have done

##### Technical

- I've been a Nixpkgs maintainer [since 2021](https://github.com/NixOS/nixpkgs/pull/111690), and a Nixpkgs committer [since 2022](https://github.com/NixOS/nixpkgs/issues/50105#issuecomment-1174474112).
- I wrote/maintain [`buildNpmPackage` and the associated "next generation" of npm/Node.js build tooling](https://github.com/NixOS/nixpkgs/pull/189539).
- I [maintain the Rust build tooling](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Awinterqt+label%3A%226.topic%3A+rust%22+).
- [142 PRs created](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Awinterqt), [560 PRs reviewed](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+reviewed-by%3Awinterqt+).

##### Community

- I frequently help people on [Discourse](https://discourse.nixos.org/u/winter) and Matrix. (I mainly help users on Discourse, and fellow Nixpkgs maintainers on Matrix.)
- I've created [one RFC](https://github.com/NixOS/rfcs/pull/131), which ultimately failed to gain a suitable number of shepherds. However, its opening has had a noticeable impact on Nixpkgs as a whole, leading lots of packages to be gradually converted to using SRI hashes even in the abscence of a formal guideline.

#### What I'll do

*These are my personal "campaign goals." Note that these are just things I am passionate about and want to start having conversations about -- these **are not** guarantees.*

- **Consistency, consistency, consistency**: Lots of "standards," review comments, and nits do not follow any sort of consistency. I frequently see contributors and maintainers complaining about how inconsistent our review process is. While this is not an issue that can be just solved with an RFC or two, I hope to make headway in creating comprehensive contributing guidelines that reviewers can point to for contentious issues.
- **More automated checks and enforcement of technical standards for Nixpkgs changes**: While `nixpkgs-vet` and our other CI checks are a great start, I think we need to have an extensible framework and process to create new lints, going off the above.
- **Make it easier to feel heard about issues**: As someone who has tried to push for change in both technical and community-related capacities (e.g. as RFCs, or as pleas to the few with power within our fragmented organization), I frequently feel like the processes for some changes have a very high barrier for entry, or just don't work at all. As a member of the SC, I'll work to make it easier for people to voice their concerns and propose changes, hopefully without indefinitely devolving into bikeshedding.

#### Why should you vote for me?

I believe that, as of 2024, Nixpkgs/NixOS is *the* best way to deploy development environments, servers, and any other sort of software configuration. In light of these recent governance issues, I have evaluated other options, and I've come to the conclusion that no other solution comes close to what we've achieved as a community. (Not even Guix!)

I want to try one last time to make a difference in a community that I've loved being involved in for the past (almost) four years. As briefly mentioned before, I've poured lots of energy into trying to fix various issues, to the point where it completely burned me out from interacting with the project. I believe that, if this governance model succeeds (and I think it has a good chance of doing so), that we can make the state of affairs better than they've ever been.## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2395746479">link</a>)</summary>

I think it makes sense for some reasons (e.g. things like the platform sporadically failing/being opaque in ways we can't debug, like notifications not working), but I'm not entirely sure that self-hosted alternatives will scale too well at Nixpkgs' repo size.

Losing the network effect is both a bad thing and a good thing IMO; on one hand, we lose contributors, but on the other hand, raising the barrier to entry for contributions *might* lead to better patch quality overall. However, there are other ways to solve this problem, like automating patch vetting + having consistent contribution guidelines.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2395765180">link</a>)</summary>

I don't have much to add, but I agree with @yu-re-ka and @roberth's takes. It's doable, but takes planning and good execution to be done well. I know we'll be able to do it eventually with time, though.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2395866325">link</a>)</summary>

At this time, no. The environment lets projects/infra move a lot quicker than third-party [0] things can, which is something we need IMO.

There are some theoretical situations I can think of where such a thing may be useful (such as moderation-related concerns), but they haven't happened yet.

[0]: Official projects = first-party, nix-community projects = second-party, in this analogy.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2395872877">link</a>)</summary>

I'm going to be echoing some points here, but it's an important topic; I'd like to make my stance clear.

> What kind of relationship should unofficial spaces (Reddit, Discord) have to the community?

They should remain unofficial, unless/until they'd like that to change.

> Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct?

Yes, and yes, IMO. However, I also wouldn't use the word "compelled" to describe this; I align with @getchoo's wording here.

> Should we attempt to convert these communities into official spaces (if so, at what point)?

See the first part of my answer.
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2395751268">link</a>)</summary>

> Should darwin be demoted to tier 3?

Absolutely not. macOS support in Nixpkgs brings us a lot of users.

Lots of the problems you speak are pretty easy to fix (with the darwin-maintainers team a ping away), and most of these issues will go away with [Randy's SDK rework](https://github.com/NixOS/nixpkgs/pull/346043) and [the default SDK version bump for `x86_64-darwin`](https://github.com/NixOS/nixpkgs/pull/338695) (though the latter is for 25.05). macOS support is about to be in a very, very good place. :)

> Should we try to find sponsors for new hardware?

Yes! However, do keep in mind that OfBorg *is not* ran by the foundation/the infra team at the moment; we would ideally want to fix this eventually, so that we can make these changes much easier than is currently possible.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2395869982">link</a>)</summary>

Yes to both (where it make sense), plain and simple; it's what we're all here for, after all.
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2395864844">link</a>)</summary>

I'm a big fan of Guix's ideas around UX/DX in general (despite implying the opposite in my candidacy doc ;)), and I think grafts would be a good thing to have. I've napkin-sketched some ideas for an implementation of them before, but it never really got off the ground. I would love for this to be done eventually.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2395869116">link</a>)</summary>

I do not and have not ever held any similar positions in OSS software, but I am also familiar with large/consequential decision making.
</details>

### Which candidates would you like to work with on the Steering Committee? ([link](https://github.com/NixOS/SC-election-2024/issues/101))


If elected to the Steering Committee, which other candidates would you prefer to work with, and why?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/101#issuecomment-2383459960">link</a>)</summary>

Question for the question: what is asking this supposed to accomplish?

The SC membership is not made based on people other SC members want to work with; whoever gets elected will hopefully learn to trust the judgement of any members they may have any reserves about.
</details>

## Unanswered questions
<details>
<summary>What is your stance on sponsorships in the Nix community? (<a href="https://github.com/NixOS/SC-election-2024/issues/17">link</a>)</summary>

What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).

</details>
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
<summary>How strongly do you align with Copyleft and FLOSS principles? (<a href="https://github.com/NixOS/SC-election-2024/issues/28">link</a>)</summary>

How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.
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
<summary>Securing contribution possibilities (<a href="https://github.com/NixOS/SC-election-2024/issues/118">link</a>)</summary>

What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?
</details>
