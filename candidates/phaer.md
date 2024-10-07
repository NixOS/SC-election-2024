# Who

* Name: Paul Härle
* GitHub handle: @phaer
* Email address: nix@phaer.org
* Discourse handle (optional): phaer
* Matrix handle (optional): @phaer:matrix.org

# Conflict of interest disclosure

* I am part of the numtide.com team.
* I did paid work on nixpkgs for personalkollen.se and niteo.co.
* I had a NGI grant from NLNet to work on dream2nix python support.

# Motivation to be on the Steering Committee

As the Nix community continues to grow rapidly, we collectively failed to scale our decision-making and community management structures in time. While this culminated in open letters, flame wars & resignations earlier this year, it also raised the bar for new users and contributors long before that, by making it harder to understand how things work and what "best practices" are.

It made me happy to see how many people were able to channel the stress & emotions from those conflicts into the NCA process and its mostly constructive, thought-through debates. I believe the establishment of a SC as a managing, guiding & supervising body for more focused teams is a great step forward and would love to contribute to unblocking some of our long-standing issues if elected.

---

## Where I come from

Some facts about my background & experiences, so you can get an idea about where my perspectives come from:

* Besides nixpkgs, you might have seen me around dream2nix, disko, nixos-anywhere or other community projects. Or even in person on e.g. NixCon, FOSDEM, CCCamp or OceanSprint. :wave:
* Was part of the short-lived nixpkgs-architecture team, which IMO dissolved mostly due to lack of resources and a somewhat imprecise problem statement but was still a valuable experience.
* Co-founded the nixos.at user group. Was involved in my local hackspace and other community spaces, where I learned a lot about ad-hoc organization, social dynamics in heterogeneous groups and conflict resolution.
* Worked in quite a few different environments: As a sysadmin/SRE with bare-metal at a local community radio and at a small payment provider; As a (mostly python) programmer in an enterprise environment; and as all-of-that-in-one-role at a startup and in managed hosting; I work as a freelancer nowadays.
* Linux user since I was a teenager, ~20 years ago, found nix ~5 years ago, but only started using NixOS and contributing a bit over 3 years ago.

---

## What I'd like to do

I see this as a team sport, so rather then going in with my personal list of issues first, I would like to gather some low-hanging fruits first to verify the process and get some routine in working together.


* The first task would be to get to know the other members of the SC and board and ensure an understanding of each others background,  priorities and availability to get everyone on the same page and  create an efficent and welcoming work environment.

* The second task would be to interview existing teams to learn about their respective perspectives, issues and blockers and what kind of support they want.

* With that info, identify the most important/urgent decisions to be made and prepare a summary of pros and cons before calling the vote. Do not only document the "what?" of a decision, but also the "who?", "when?", "why?" and possibly a statement by dissenters if the vote was not unanimous.

 ---

 That being said, there are a few things I would like to see, advocate for and help where I can. From the top of my head and without claim to completeness:


* Restart https://weekly.nixos.org/ - or make it monthly; 12 newsletters per year are already on the marketing teams agenda. Ideally, depending on resources, we get to regular newsletter with editorialized content. Including, but not limited to: new nix features, significant nixpkgs PRs, links to significant debates on discourse, etc.
As the community grows, it becomes more and more time-consuming to stay up to date with all relevant developments. There's also different sub-communities, emerging around different interests and communication channels. This is a largely a good thing IMO, but I believe an official overview on what's happening would help communications inside and outside the community.

* Assemble a darwin team for nixpkgs and raise funds for it. There's
currently a shortage of darwin builders which slows down CI for nixpkgs PRs. I believe its worth an investment to keep darwin a well-supported platform. For individual users of that platform, but also to easy adoptions in company environments where at least some developers might be on macOS.

* Keep working on the ongoing automation efforts around unified formatting and things like nixpkgs-vet in order to quickly reduce some of the churn in PR reviews. Let's figure out what it would need for merge trains in nixpkgs if feasible.

* Enable flakes by default; get ~consensus on the blockers and solve them or live with them. Whether we like it or not, flakes are widely used in practice and should be stabilized - or deprecated if needed, but the experiment should not last another year. This would also mean to include flakes and new-style CLI commands in official docs.

Hoping this gives you a good picture about my ideas and priorities. Tried to keep it exemplary and short, and will answer the rest in the questions to candidates.

---

Let me finish with a more personal note: I got into Nix and NixOS when I was all but done with (enterprise) Linux, Kubernetes and maybe computers in general :sweat_smile:.
The sheer creativity and depth of knowledge in this community together with the unmatched customizability of NixOS helped me to find joy in hacking again :two_hearts:
I sincerely hope we can keep fostering those while we grow as a community, both in quantity and in quality!
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2395463624">link</a>)</summary>

tl;dr: Short-term no, long-term probably yes; should explore

I think a migration as such would currently provide a questionable cost/benefit ratio at best.
On the other hand we should strive to minimize our dependency on GitHub in any new features and
processes and consider alternative solutions where necessary to avoid further vendor lock-in.

The strongest abstract argument against Github being Independence/Sovereignity: GitHub being a proprietary service means we have no influence over
its features and policies while both of them decisively shape how we collaborate on this project.
The strongest argument pro is that we gain lots of infrastructure. To maintain that kind of infrastructure would require resources that could be used better in our existing infrastructure (i.e. cache, ofborg, etc) or work on nix and nixpkgs itself.

Being on Github means that Microsofts has the final say in:

- Who is able to contribute to nixpkgs (as you de facto need an account).

  On the other hand we rarely have to deal with things such as spam control (at least compared to matrix and so), and we gain an OpenID provider with 2fa for several thousand people for free. This is no small feat to maintain properly in itself.

- How we collaborate - it's a platform decision whether everyone can mistakenly ping 3k people by changing a target branch.

  On the other hand it's the tool-set that everyone knows. Like it or not, GitHub is the WordPress of code forges:
  Most experienced users will strongly dislike some of its design decisions, but almost everyone either knows how
  to use it or can quickly learn it with the help of endless good resources online.

- and it's a single point of failure; hard-coded somewhere almost anywhere in the ecosystem. If GitHub goes down, much of our project comes to a halt, you have neither issues nor pull requests available nor can you update your sources and we have no real influence on when it's back up.

  On the other hand it has a pretty okay record on uptime and it's not clear how much better we could do with a self-hosted git forge in the long run. We also don't need to care much about ddos protection or so with GitHub. And we have another single point of failure in our systems which needs somewhat urgent care and long-term solution: The binary cache should be the first priority here IMO.


So to conclude we should explore alternatives to GitHub eventually, but I don't regard this as urgent as other issues (cache, flake stabilsation, governance structures in general).
More specific steps would need to be planned in a team and scoped as tightly as possible. I personally believe that our code review tools could be a good place to start exploring alternatives ;)

</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2395378060">link</a>)</summary>

> What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values?

In general, Nix needs more money and resources to sustain it's growth - i.e. for the binary cache, darwin builders, conferences and many other things. To avoid any unduly influence by any single sponsor we should strive to gain as many of them as possible and we should actively seek out sponsors.  

I believe questions on the ethical conduct of a given sponsor should best be left to the selection committee and be discussed on a case-to-case basis based on the agreed-upon community values. The duty of the SC would be to provide escalation points and handle conflict if when deemed necessary.

The current [sponsorship policy](https://github.com/NixOS/foundation/blob/master/policies/sponsorship_policy.md) defines a 5 person committee just for this task. I would be in favor to replace that committee with the SC entirely, as it's expected to provide the best representation of the community we have. Failing that, the SC should have explicit veto power against sponsorship here.

> Are you in favor of merging this pr?(yes or no answers only for this specific question, please).

No.

I do align with the general motive here and did sign the first, anti-MIC-sponsorship open letter.
But I don't think we gain any clarity by merging that PR as it just moves the discussion to i.e. what "heavily" or "primarily" might mean exactly for a given company.
I also believe the policy should preferably be generic and agnostic to specific industries, or at least include a complete listing of banned industries. This PR would not cover lots of other companies and institutions which I hope the sponsorship selection committee would object to as sponsors. i.e. sketchy crypto projects, gambling, spammers, etc.


</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2395440127">link</a>)</summary>

I see this as one of the more urgent issues of the ecosystem:

It's not only an annoyance for users but for new-comers, the question why a feature that's so widely used in the community isn't available in the default config pushes some of nix historic(?) governance issues right into their face, far too early in their journey into nix.

Additionally, at this point in time any breaking changes to flakes could cause such widespread 
breakage across the community, that they would need to be handled with great care on a release engineering level, providing migration advice and such. 

I am aware of at least some of the flaws in the current implementation, @getchoo provided a great list of links in their response for those interested in details. Remaining issues around fetchTree seem to be the biggest to me.

The SCs role here would be to
* Check with the nix team what they need for fetchTree stabilization specifically, and also in general. Try to agree to a date where we would stabilize the current behavior and decide to eat the maintenance cost as a project.
* Discuss in detail what the consequences of in terms of maintenance and generally were if we would grandfather-in the current implementation. I suppose this greatly depends on how stable paths stay for evaluating existing expressions.
* In any case, coordinate with the documentation and marketing teams to ensure all breaking changes are easily accessible so that users understand what broke why and how to fix it.
*
* Consider a fundraiser for this effort specifically if it would help the effort.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2395422145">link</a>)</summary>

I think the important thing here is to make it easier for users to inspect the licenses of software in their closure and decide which are acceptable to them. i.e. working towards a better integration of existing SBOM generators and make it easy to allow/disallow specific licenses for a given nixpkgs instance, akin to `config.allowUnfree`.

The current MIT license fits the use-case of most nix projects well IMO, I wouldn't change anything here.


For the rest, I believe the nix communities captures it well in "Free software and choice over lock-in":
> Nix projects are and will always remain [free software](https://www.gnu.org/philosophy/free-sw.en.html).
> We value working together with the broader free software community.
> Free software is our priority, but we also support our users' needs to use non-free software, when practical.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2385573245">link</a>)</summary>

No, not in administrative matters. Could make sense to formalize a shared understanding of moderation policies if both, the nix-community team and the moderation team would agree to that. But I wouldn't see this as urgent as it seems to be working well in practice so far.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2395471507">link</a>)</summary>

While I think more detail planning needs a team effort by nixpkgs-architecture or a new team, I think scaling down nixpkgs in terms of both code to maintain and eval time/disk size of nixos instances is a valuable goal per se.

I'd advocate for the following ideas (and be open to new ones of course ;)):
- different, easy to filter for, support tiers for packages. Core package sets like toolchains for tier 1 platforms and everything needed to boot the minimal nixos system which is bootable should...
  - ideally have at least 2 responsive, well known maintainers - or highlight that it's missing them
  - have automated update scripts
  - be covered by nixos vm tests
  - be prioritized in the upcoming security tracker efforts and in the build infra
  - maybe have a dedicated branch/channel in the long run
- support existing efforts to minimize the set of nixos modules required to evaluate a nixos system
- continue to support existing efforts on minimizing the size of nixos disk images, as those often higlight size and unecessary dependencies issues most quickly.
- Consider investment for tooling that makes it easier to "follow" a sub-set of nixpkgs. I.e. notify me on security updates or all PRs in my nixosConfigurations.

So we should allow scaling down, primarily because it enables quicker iteration on alternative distros to be spun-off nixos and better results to e.g. build disk images for appliances.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2385555646">link</a>)</summary>

tl;dr: clearer structures, escalation points & active moderation. Creating a more welcoming culture for more voices to be heard.

I agree with pretty much everything written in the posts above me and it makes me cautiously optimistic that we can get better at this to read those well-written responses :)

> What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?

I believe clearer structures, responsibilities and escalation points to be a good first step, even if they might turn out to be insufficient on their own, to make the community more welcoming to people from all kinds of backgrounds.

Active moderation and keeping the moderation team well-equipped to handle a growing community  is critical as well in my opinion.

For specific measures, I'd like to consult the existing moderation team first. But both, expansions and more explicit processes seem sensible to me personally. Time zones could be one consideration, as most of the current team seems to be in Europe. I am sympathetic to the idea of voting for moderators, but I think that it should not be the first step, as good elections take quite a bit of preparation effort and one would enough candidates for the position of "unpaid internet janitor" in the first place. 

Some smaller ideas:

* Promote existing initiatives such as [#gm:nixos.org)](https://matrix.to/#/#gm:nixos.org) more prominently if wanted by channel admins. The same would be true for other minority-focused initiatives and sub-communities as well if moderation and community standards could be enforced.  
* 
* Consider speakers queues for synchronous meetings/calls to make more voices heard.  move people who just spoke to the back of the queue in order to avoid dialogs and give everyone in the meeting the same change to contribute. 
* 
* Evaluate use of video/audio calls. I see much value in quick, synchronous communications, but at the same time I am afraid the might not be very inclusive for many different people, i.e.:
  - They need an agreed-upon global time. Making it harder to participate for users in some parts of the world.
  - You need to speak English and understand it if spoken quickly; not be too insecure about your accent.
  - You might have a disability or speech impediment
  - Your voice might not be perceived to match your gender expression which might be a concern to you. 

</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2385327727">link</a>)</summary>

> What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

We should **not** demote it, but

* establish a dedicated team for it.
* secure funding for additional builders. 
* ...and hopefully more, platform support for darwin is something we might be able to secure funding for the required labor itself?

Using Nix for devshells & deployment tools on darwin seems to be common enough companies that I am optimistic that at least the builder situation is relatively easy to solve with a coordinated approach and some outreach.

Recent work also considerably helps with many of the SDK/toolchain woes darwin brought upon us.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2395393059">link</a>)</summary>

Negative. ;)

Analytics enabled by default on the client would most probably alienate a significant part of users; so we would need it to be opt-in in my opinion.

But by virtue of being opt-in it would loose its value in maybe being somewhat representative on things like feature usage etc. If there even was one! - I'd like to ask proponents of this idea for more specific examples on what data would be used by whom to arrive at what conclusions?

For things like debugging and bug reproduction, I think more work on nix logging capabilities, the recent PRs regarding tracing capabilities and more usage of VM tests could all yield better returns in the short-term then client-side analytics.

</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2384089837">link</a>)</summary>

I believe the social division on governance issues - I personally would not call it "fragmentation" just yet - will take time to heal.

I do think we are heading in a good direction with the statement on values, the constitution and now the SC elections. But (re-)building trust among each other and into new processes will not work quickly and require lots of negotiations of all parties involved. 

From what I have seen so far, I am positive that we will be able get to a rough consensus on what the most urgent issues are among a vast majority in the community; and slowly move forward on most of them - all while continuing to iterate on our governance structures and see what works for us and what doesn't. 
Especially if we continue to learn from other communities of a similar size, actively moderate to ensure a civil and open discourse, and have better escalation points if things go wrong than we did in the past. 

---

I see technical "fragmentation" mostly as a net-positive for the community, i.e. I love how both lix and (cpp)nix got many great new features and fixes since the fork, often ported. I also like how tvix re-envisions parts of nix, be it as a research-project as a hobby or someday as production-ready solution. 

The SC mission in my understanding is to decide what's official and to ensure that users have a clear understanding on what is and what not. IMO it's quite clear already that (cpp)nix is official and tvix and lix are not. So I see now need for change here atm; after all, being able to choose your own tools is one of the great virtues in this community.

Flakes, on the other hand, should be made non-experimental IMO. Or even deprecated if needed, but everything seems better than keeping it experimental forever at this point. As it stands now, Flakes are almost everywhere in community projects, but nowhere to be found in official docs. This is an instance of fragmentation that hurts us IMO.

Lastly, there's sometimes discussions about upstreaming i.e. home-manager to nixpkgs. I think such decisions should first come from the respective maintainers and then be discussed in detail. 
</details>

### How should we go about backwards compatibility? ([link](https://github.com/NixOS/SC-election-2024/issues/81))


Currently, we seem to be promising compatibility for stable branches, but in new releases, we are allowed to break "if necessary". Where do you think the line of "if necessary" should fall?

How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

Can you answer specifically about NixOS module options, as well as generally for nix community projects?

[1] ["There are only two ways to change software: growing it and breaking it. We don't break."](https://www.youtube.com/watch?v=oyLBGkS5ICk&t=1189s)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/81#issuecomment-2395396815">link</a>)</summary>

I am happy and always open about specific proposals, as an RFC or other-wise, to improve "backwards-compatibility"; but I don't think it's an urgent problem at this point in time.

NixOS is much better than most other systems in allowing you to build and/or switch back to quite old releases, even with a binary cache still available!

Keeping stability in terms of code is a much broader topic. I think the policy to allow breakage between releases is a good one, but you are right that we should elaborate that "if necessary" part.
* I think it's good that it's in there, if only as a small reminder to reconsider whether the author thinks "its necessary" to break compat.
* A more elaborate policy should probably be different between subsets of nixpkgs (i.e. lib, nixos, services)
* Its IMO fine to break backwards-compat if it ends up with the right warnings/assertions for user config, a changelog and ideally a VM test for the service :)
</details>

## Unanswered questions
<details>
<summary>Should Nix Have a Home Management System? (<a href="https://github.com/NixOS/SC-election-2024/issues/83">link</a>)</summary>

Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?

</details>
<details>
<summary>Should Nix self-host the binary cache? (<a href="https://github.com/NixOS/SC-election-2024/issues/19">link</a>)</summary>

Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?
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
<summary>What's the best way for the steering committee to deal with inaction or being ignored? (<a href="https://github.com/NixOS/SC-election-2024/issues/114">link</a>)</summary>

One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?

</details>
<details>
<summary>Do you believe that one of the core principles of NixOS is its declarative approach?  (<a href="https://github.com/NixOS/SC-election-2024/issues/9">link</a>)</summary>

If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 
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
