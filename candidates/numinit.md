- Name: Morgan Jones
- Github handle: @numinit
- Email: me@numin.it
- Discourse/Matrix: @numinit

### Conflict of Interest Disclosure

We use Nix heavily for our team's build and CI system at Viasat. Viasat is a medium-sized Carlsbad ISP with both commercial and defense projects.
 
### What I've done:

- 146 commits to nixpkgs
- [androidenv rewrite](https://github.com/NixOS/nixpkgs/pull/89775), [nixPKCS](https://github.com/numinit/nixpkcs), handful of modules including Nebula and Mattermost

### What I'll do

Help advance the project in a stable and transparent way and restore contributor trust. My particular interest is using Nix to improve supply chain security, so that will likely be the focus of projects I look at. This includes things like prototyping options for more trustworthy infra (improving package signing especially), but also keeping communication open between the community and SC.

From a community standpoint, I think the SC should be a united front looking out for and trying to transparently improve pain points, especially in terms of preventing the negative pieces of what happened earlier this year from happening ever again. To that end, I'd like the team's enforcement of moderation rules to be fair, based on behavior and track record. I'd especially like the community to remain on topic and be a vibrant place to talk about technology, and think we can get there if we try a little.
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2390507410">link</a>)</summary>

For now, no. To quote Pieter Hintjens:

> I'm sure one day some large firm will buy GitHub and break it, and another platform will rise in its place. Until then, Github serves up a near-perfect set of minimal, fast, simple tools.

It's definitely within the purview of the Nix values to experiment, though! Lock-in is a shame, but we should go to where most of our contributors are.
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2395917364">link</a>)</summary>

I want to see Nix get more widespread adoption, because that will result in it being more successful. We should focus on how users are actually using things, and work on improving tech that facilitates that:

- Improve developer experience by stabilizing flakes. Try to get flake schemas out as part of this. Target Docker adjacent users so Nix feels less built for its developers, and more built to solve problems.
- Improve trust in the binary cache infrastructure by signing derivations in backwards compatible ways using hardware keystore keys, preferably with remote attestation of those keys.
- Improve the store situation by exploring distributed NAR fetching that helps with cache data egress cost as long as it doesn't also slow things down for people.
- Get rid of things people think are annoying, like cached eval errors. More automation, whenever we see something that's annoying to test by hand. Less nix- commands and more nix commands so there's one clear path to use things.

I love Nix, but also think that there's a huge wealth of technical improvements that will make others love Nix more. Let's focus on how people are actually using the software and iterate on it. 
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2384701140">link</a>)</summary>

> What kind of relationship should unofficial spaces (Reddit, Discord) have to the community?

The internet is a huge place, and as the userbase of NixOS grows, people will form communities for smaller focus groups or projects. We should encourage and support them, even if they have a different focus from us. People have more fun when they find other like-minded people to hang out with and hack on projects they enjoy.

> Should they be linked on the homepage?

Depends on how much space is on the homepage, and whether they can be fairly presented next to other communities of the same size. Long term, it may make less sense for NixOS to be the arbiter of who gets on the homepage if there are very many communities. For now, it seems like it's useful.

> If so, should they be compelled to comply with the Foundation's code of conduct?

No. They can adopt it if they want and there may be benefits in consistency if they do so, but this is a type of conformity that we have no business enforcing on another community. From the values, "we are a synthesis of varied but overlapping communities." We can be both varied and overlapping while treating each other with respect.

> Should we attempt to convert these communities into official spaces (if so, at what point)?

Possibly, but only at the point where the people running those communities think they're ready for it and they agree it would be beneficial. I think we already have a problem with fragmentation of official spaces between Matrix, GH, and the Discourse. Unofficial spaces each bring their own userbases, which is more a feature of online communities than a bug.
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2395149847">link</a>)</summary>

I like this question. It's a classic "how would you manage conflicts in a team environment" with an open source twist.

> Maintain effective escalation points for issues that require further attention. Decision authority may be delegated to other teams when significant analysis is needed, [...]

First of all, we should really know what's going on before taking action, and it shouldn't be a surprise, because we should have been in active communication with the team this entire time, in meetings on the record. At the end of the day, though, the SC is responsible for the direction of the project, and something's not getting done.

I'd assume the best. Why is the team not making progress? Is there something they're missing? More likely, is there something _we're_ missing as the SC? Where can _we_ fix the leadership failure? Only once all avenues that the SC could have taken to reasonably provide support are exhausted, do we talk about invoking the constitution. So, then it goes:

> [...] but the SC remains responsible if the delegated team fails to reach a decision.

This is where the SC can decide to change the composition of the team, or dissolve the team. It should ideally be done without a shred of animosity. Experiments fail. We're an open source project and a team, it happens.

> We are here, first and foremost, as individuals working together.

That's the approach that will help people in the project stay friendly with each other. What will not help is pitting people in the project against each other to get what someone wants.

> We treat each other with respect and civility. No matter one's individual identity, circumstances, level of contribution to the project, or status, everyone has the right to respect, and everyone has the duty to treat others with respect. We prioritise project health over individual interests.

The community has a right not to be weaponized by the Steering Committee, because doing so would be disrespectful, and an abuse of power. We all agreed on a set of values. Using the SC for destructive, antisocial purposes counter to the community's values should be grounds for dismissal from the SC.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2384678704">link</a>)</summary>

I have led a team actively developing a handful of software products at my day job for the past 7 years. Our primary product is a mobile device manager with thousands of deployments on Android devices. There's no pressure or anything: one bad update can cause a device to need to be factory reset even though they sometimes end up that way without our help. Thorough testcases help a lot, especially end to end ones.

Still, I'm especially proud that a client from 5 years ago works on a newly built server, and vice versa. That's the power of people agreeing on schemas that can evolve gracefully (and an honorable mention to protobuf). 🙂

Besides developing for backwards compatibility (and reasoning about when maintaining compatibility may be a bad idea), responding to security reports, and so on, part of my day job is making sure that every part of our infrastructure from the builds to the deployed product are working well (usually leveraging Nix, of course). Listening to pain points from our customers and other developers is super important here.

OSS stewardship is definitely part of that job for me, and pushing upstream whenever possible is part of the dev process. As much as people depend on our software to work, we depend on our systems to be reliable, so that's why I try to contribute things that were useful for us back to nixpkgs. Things like the [androidenv rewrite](https://github.com/NixOS/nixpkgs/pull/89775) (which has been reliably running our builds for years at this point) came out of that, and community feedback has been very useful to iterate on it. So, instead of making some conditional "if I'm elected" promise, I'm just going to keep iterating and listening to feedback regardless of whether it's in the context of the SC or not, because it seems to be working.
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2387817274">link</a>)</summary>

> We value experimenting with designs and concepts, and folding successful experiments back into continuous improvement for stable components. 

I feel like we should observe how projects are being used and look for people making de facto standards out of them. That's an indication that an experiment is working. Then, we discuss with the project owners and the community about the pros and cons of promoting it. Being bundled with a core Nix project in some fashion would be a benefit.
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2395925010">link</a>)</summary>

Full send, ship it. The bootstrap seeds are too large. I like some of the work that's being done with http://pnut.sh/, where we can compile a C compiler (TCC) as long as we have a POSIX shell. https://nlnet.nl/project/Gash/ can be that shell, since it's implemented in Scheme. And Scheme will probably be able to be bootstrapped in the future from a metacircular evaluator that can be implemented using bin0...

Anyway, what I'm saying is that we should help support some of the GNU full-Scheme bootstrap work, because it's really cool, and a great usecase for Nix. 
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2390493022">link</a>)</summary>

Frankly, I'd go for converting Docker users the most. Show users why Nix can be easier than Docker, but much more powerful, while maintaining some type of Docker compatibility, and we'll get tons of people switching over. The trick is reducing the work required, because few teams will put the time in. It may be a stretch, but doing symbolic execution of Dockerfile commands and ending up with something that Nix can ingest would be awesome.
</details>

### What are your thoughs about integrating distributed stores into Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/113))


AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/113#issuecomment-2390484587">link</a>)</summary>

Some friends and I got part of the way through an implementation of this for doing mesh binary caches this year at DEF CON. It's really interesting stuff (that's been on hold recently due to life happening, but stay tuned). Setting aside the head of line blocking for checking multiple stores in a mesh configuration, we decided that a distributed store would probably have to be used as an assist to existing unicast HTTP stores for this exact reason, but could alleviate some bandwidth issues.
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
<summary>What constitutional changes would you advocate for and why? (<a href="https://github.com/NixOS/SC-election-2024/issues/35">link</a>)</summary>

If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?
</details>
<details>
<summary>How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? (<a href="https://github.com/NixOS/SC-election-2024/issues/7">link</a>)</summary>

What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?

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
<summary>What are your thoughts on ca-derivations? (<a href="https://github.com/NixOS/SC-election-2024/issues/111">link</a>)</summary>

What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?
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
