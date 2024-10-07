- Name: Thomas Bereknyei
- GitHub handle: tomberek
- Email address: tomberek@gmail.com
- Discourse handle (optional): tomberek
- Matrix handle (optional): @tomberek:matrix.org

### Conflict of interest disclosure

I am employed by Flox (https://flox.dev) as my primary source of income.

### Motivation to be on the Steering Committee

I believe that the functional software deployment model is the correct
way for software to be managed and that Nix (or something quite close
to it) is going to be the commonly accepted way to handle the
ever-increasing complexity of software. My goal is to propagate and
promote Nix. This is not something that can be done as an individual,
or by any one company or organization; it will take a community of
diverse interests and therefore my motivation is to help the community
manage the current growth.

#### What I have done

I've been a part of this community for over a decade and participated
in various teams (Marketing, Nix UX, Nix development, RFC Steering
Committee, RFC writing and shepherding) and organizing Nix Meetups and
Conferences. I've held a large number of Office Hours and regularly
focus on helping newcomers and guiding people to become contributors.

#### What I'll do

I plan to help establish project direction and assist the various
teams to accommodate the growing interest in the ecosystem.
Considering the importance of the role, I will work to onboard new
participants into the teams I am on and prioritize Steering Committee
responsibilities.
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2381448352">link</a>)</summary>

No. While conceptually compelling, the benefits of a well-known platform and other more pressing concerns lead me to conclude this is not the right priority at the moment.

That being said, I would not oppose an effort to explore the benefits and practicality of a self-hosted forge. Trying out new ideas and [preventing lock-in is expressly part of our established values](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#free-software-and-choice-over-lock-in). 
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2381446857">link</a>)</summary>

My stance is that the community needs more sponsorships and partnerships. I am sensitive to the the fact that some companies are more controversial; my solution to ensuring they cannot unduly influence the project is to promote and promulgate Nix/NixOS adoption such that no single company nor industry can dominate the direction of the project. The greatest danger is takeover by a single entity, so we should ensure Nix is adopted and becomes critical technology far and wide. If only controversial industries adopt Nix, then we need to seriously consider why that is.

The approach I have taken is to consider the established practices used by other open-source communities who have dealt with these matters for quite a long time; we don't have to re-invent the wheel.

Regarding the mentioned controversy: I have been in both the military as well as part of founding a defense startup; then I left that world behind a few years ago. This gives me a unique perspective and experience of the better part of two decades with the industry. I am familiar with where there are true moral hazards and where they are FUD or driven by inexperience. I have been in the situation where difficult decisions had to be made, and also when a moral choice took precedence, regardless of the personal cost. If we are going to deal with the reality that such companies are part of the Nix user base, I have the experience to identify the relevant issues and ensure they are addressed.

> Are you in favor of merging this pr?(yes or no answers only for this specific question, please).

No.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2395274175">link</a>)</summary>

Most of what needs to be said has been expressed above. I'll only add that the Nix team's current approach to this problem is: (1) trying to fill the remaining gaps in nix-command and (2) to finalize the semantics of fetchTree, a cornerstone of flakes.

Oh, and if anyone would like to pursue fixing any of these, or any other outstanding Nix issues, feel free to reach out or contact the team!
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2381494373">link</a>)</summary>

As stated by @mschwaig, this is role is currently filled by home-manger. Better integration would clearly benefit users and home-manager is a significant driver of Nix adoption. Therefore, I would support home-manager if they choose to become an official project and/or incorporating it into Nixpkgs, or another community-led effort in a similar space. Our role would be to help coordinate with the home-manager maintainers, or to ensure that additional resources related to incorporation into Nixpkgs are available (eg: for building + testing).

The concern here is that such integration is also the creation of a default, making alternatives less likely. I do not yet have a strong opinion on a specific direction to take, but welcome any input on the matter if someone has interest.

Side-note: I do think there is room for an abstraction in the Nix ecosystem to accommodate the "eval - build - apply" workflow. The "apply" (or "activation") has been a part of nix-shell, nix develop, home-manager, nixos-rebuild, NixOps, morph, and other tools. This is a common pattern that would benefit from reuse and incorporating the lessons learn from the existing experiments.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2381448985">link</a>)</summary>

It has been proposed to consider recommending stronger "share-alike" licenses for official Nix projects; at the moment I am inclined to agree.

More philosophically, both free and open source are great ways to create software and I fully support and encourage those mechanisms. I think this is a widespread and non-controversial stance prevalent throughout the Nix community. These are enshrined in the [values](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#free-software-and-choice-over-lock-in) as "Free software and choice over lock-in".
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2381448748">link</a>)</summary>

I don't know. Conceptually, I like the idea of a community-maintained peer-to-peer cache and self-hosting. Self-hosting requires even more work to be placed onto a limited infrastructure team and either appproach requires additional development to be a viable alternative. Thus I think the right approach is to allow any of these to be experimented with:

> TIP: When there is an interesting problem, try to get multiple teams competing to solve it. Competition is great fun and can produce better answers than monopolized problems. You can even explicitly create competitions with prizes for the best solutions.
    - https://hintjens.gitbooks.io/social-architecture/content/chapter1.html

</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2381435775">link</a>)</summary>

No. My impression is that [nix-community](https://github.com/nix-community) is meant to distinct from the NixOS organization and that the existing [team](https://nix-community.org/administrators/) is not looking to fall under formal Foundation governance. It would be up to them to consider the matter. Personally, I think the role as a project incubator and playground prior to formal inclusion is being well-served and I do not recommend a change to the status quo.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2395174755">link</a>)</summary>

First off, I think the SC should be establishing a permanent Nixpkgs Core team to provide more focused thoughts and plans for such a question, but until then...

I'll walk through my thought process. Significantly scaling down Nixpkgs one-by-one doesn't really seem feasible. As you clean up, you will also create lots of breakage and impact users who may not be able to work around the removals. We do a bit of this during Zero Hydra Failure when for many packages we just admit defeat and mark them broken. Perhaps policies where if something has been broken for X time, it can be removed by anyone, not just the stated maintainer.

There are some experiments with splitting up Nixpkgs that are interesting. One can imagine some language ecosystems becoming their own repos and depend on a core Nixpkgs, this is one of the high-level/long-term motivations behind flakes (making this a reality would take more time+work). This is also related to the idea of having an in-repo shared set of language-specific lockfile entries, good for application and system-level consistency; but we would probably need lots of exceptions and fixes, which then re-raises the maintenance burden.

Some things we can do along the lines of ["Automation over process and toil"](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#automation-over-process-and-toil1).
- emphasize and educate people about [updateScript/nix-update-script](https://nixos.org/manual/nixpkgs/stable/#var-passthru-updateScript)/etc. I've found that many people are not aware of it nor are comfortable creating them. This can be a themed event: USE - Update Scripts Everywhere marathon! This would be a tedious thing to do en-masse, so it would be a quality of life thing to fund someone solely focus on it for a few months.
- some areas of Nixpkgs can have a policy of updateScript being required for new packages
- Leverage the [nixpkgs-merge-bot](https://github.com/NixOS/nixpkgs-merge-bot). As we gain more comfortable with it, we can enhance the logging, visibility, testing, and approval permissions.

An example of a project where we scaled down was with the deprecation of NixOps. The Team Representatives group discussed and came to conclusion that we should notify people that it would no longer be maintained and is "use at your own risk". Many other similar tools have been created recent years and the need to keep it around+maintained was not worth it. Side-note: there is an effort and some funding to create a new version: [NixOps4](https://github.com/nixops4/nixops4) - creative naming, I know.

</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2381486338">link</a>)</summary>

> "The purpose of the foundation is: to develop, propagate, and promote the adoption of a purely functional software deployment model..."
    - https://github.com/NixOS/foundation/blob/master/by-laws/Oprichtingsakte_NixOsFoundation.en.pdf

My vision is for Nix (or some model similar to it) to be widely adopted and the standard for how software is managed. This makes it critical infrastructure and provides a net-benefit to mankind. This might seem bit hyperbolic, but I really do think that humanity would benefit as a whole. This means making Nix easier to use, understand, and adopt.

Specific technical innovations I am interested in are dynamic derivations, peer-to-peer caching, remote builds, using the Nix Store as a library, and relocatable stores. These would be foundational capabilities, but more important for adoption are things like clearer messaging of the benefits of Nix, improved usage at large scale, and simpler initial adoption by individuals.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2381450745">link</a>)</summary>

The NCA has put in some good work creating the [constitution](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md). I think we should work with it for a while and see what develops. While I might be able to come up with some improvements, I think proceeding with a generally agreed upon framework is more important than any specific change I have in mind.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2381449870">link</a>)</summary>

Disclaimer: I am a mod and active in the voice chat of the unofficial Nix/NixOS Discord.

> What kind of relationship should unofficial spaces (Reddit, Discord) have to the community?

It should be informal. It is good to maintain communication for issues related to common events, announcements, and moderation concerns. They are unofficial, thus they can scale independently and pursue their own goals.

> Should they be linked on the homepage?

Yes, it should be clear they are distinct from the official spaces, but as they are significant enough resources for people wanting to find support or a community, they should be listed in some way.

> If so, should they be compelled to comply with the Foundation's code of conduct?

No, that is what makes them unofficial. And trying to compel them would be counter-productive. This is an example of ["Distribute decisionmaking widely"](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#distribute-decisionmaking-widely). That having been said, the Discord admins have discussed and are adopting the Contributors Covenant as a code of conduct. No compulsion is necessary.

> Should we attempt to convert these communities into official spaces (if so, at what point)?

Yes, by convincing them that it is worthwhile to do so. But not by compulsion.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2381434097">link</a>)</summary>

I have advocated for such measures. These are also enumerated as  responsibilities of the [Steering Committee](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#steering-committee):
- "Maintain effective escalation points..." I've have served as a mediator between people who have felt wronged and have also proactively reached out to people in efforts to de-escalate situations. It is not always easy for someone to advocate for themselves effectively, so it can be helpful to have someone do so on their behalf. In the opposite situation; it is more effective to be corrected by someone you respect and trust than by someone you are in an active disagreement with.
- "Delegate authority to long-term teams and committees, allowing them to evolve policies as needed." I wrote [RFC 102](https://github.com/NixOS/rfcs/pull/102) with the goal of establishing a team to perform the necessary moderation tasks and it specifically included clauses ensuring a welcoming and safe environment for all. Since then, the team has evolved and the CoC adopted. These measures need to be made more effective and I would look to other open-source communities to ensure we learn from their best practices.
- "Create and enforce appropriate rules for Nix project spaces..." The most harmful effects in a community are not due to bad decisions, but instead due to manipulation by bad actors, regardless of the intentions. Ensuring the rules are clear and consistently enforced is an oversight responsibility of the SC.

A specific example of voices that have not had as much access as they should is that of regular Nixpkgs contributors. I believe this is part of what leads to disenfranchisement and thus I have been thinking about how to ensure the existing informal teams have a voice during decision-making.
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2395243617">link</a>)</summary>

> Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is ignored, de-prioritized, or litigated by the relevant parties.

The Steering Committee cannot compel anyone if they are not being funded. I would highly discourage using political activism tactics against such individuals or to rally the community to impose social pressure upon people to do something they don't want to. That would be improper use of the power of the SC - a group with power - against an individual who likely does not.

@numinit and @mschwaig point out some of the explicit powers of the SC, such as creating and managing the teams, and some reasonable procedures the SC can follow. If the purpose of a team is to solve a particular task, and someone refuses to do so, then that task and any associated authority should be given to someone who will (after some consideration that perhaps the first individual has a proper reason to refuse). In the end, the only levers the SC should use are the ones provided in the constitution. Otherwise it would be too easy to abuse that power, regardless of the intentions.
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2381571220">link</a>)</summary>

Darwin is popular, but requires additional resources and people focused on the problem. We should keep Darwin as a supported platform by funding additional hardware and finding personnel to focus on this portion of Nixpkgs. Concrete steps to take would be to establish a formal Darwin team who would manage provided funding for hardware and coordinate support via the infra team. This is part of an overall approach of [establishing ownership of the problem](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#distribute-decisionmaking-widely) as well as providing the necessary resources to solve it.

This is a problem to be solved for end-users and developers. So I would engage with organizations using Nix as a development tool on Darwin. They benefit from the ecosystem and thus also have some responsibility for its upkeep.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2381435495">link</a>)</summary>

> Do you believe that one of the core principles of NixOS is its declarative approach?
    - If so, should NixOS strive to further minimize state and enhance its declarativity in the future?

Personally, yes and yes. Though I would expect most decisions about this to be delegated to the appropriate teams rather than a top-down approach. The SC would be more involved with ensuring that those teams exist, are functioning, and that their decisions are communicated.

> ... ensuring that decisions are made explicit, along with their origins. - Ensure project decisions get made in a timely manner as far as possible...
    - https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#steering-committee

In most situations, we should let people explore solutions in a non-interfering and non-dictated manner.

> TIP: When there is an interesting problem, try to get multiple teams competing to solve it. Competition is great fun and can produce better answers than monopolized problems. You can even explicitly create competitions with prizes for the best solutions.
    - https://hintjens.gitbooks.io/social-architecture/content/chapter1.html


## Contention

If a truly contentious topic came up related to the direction of development for NixOS that could not be explored simultaneously in a non-conflicting manner, then we may need to decide. My thought process is to find out who should decide. We have:
- the RFC process; good to get input, but doesn't scale well nor establish effective ownership.
- NixOS Release Team; relevant expertise, but is not a permanent team and is established with only a specific task each time.
- No specific team listed in https://github.com/NixOS/nixpkgs/blob/master/maintainers/team-list.nix or https://github.com/NixOS/org/tree/main/doc
- anyone else?

It seems then that the SC should consider identifying and establish a team specifically for long-term NixOS maintenance and decision making, or expand the NixOS Release Team with the role to decide.

## Deadlock
If those mechanisms all stall and fail, it then falls to the SC to break the deadlock.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2395249346">link</a>)</summary>

The Nix team has explicitly taken steps to split up the implementation to allow such a re-merging and reuse. There is an approved [RFC](https://github.com/nixos/rfcs/blob/master/rfcs/0134-nix-store-layer.md) and at this point we have the split not only as a library but as a separate derivation. These technical steps prove that it is viable. The C-API also allows easier usage of the Store layer as a library, thus we are in a good position to making our library more appealing for Guix to use directly.

I'll add that I think we can also inspire non-Nixpkgs, non-Nix-language and non-packaging usage of the Store layer for many other situations requiring distribution of data and software. I'd love to see libstore used in other ecosystems.
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2395245199">link</a>)</summary>

Our current mechanisms are not very easy to use (try replacing a self-referential glibc!). But the idea is worth pursuing, I have a done a little bit myself. And so are the alternatives. I don't really see this as an either-or situation, so people should be free to pursue these developments independently.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2395237131">link</a>)</summary>

Other than Nix-specific responsibilities, I am familiar with large and consequential decisions. I was part of a technical evaluation and lengthy selection process for a multi-billion dollar cloud contract for software and hardware. This would then be used host services depended upon by a few million families.
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2395196032">link</a>)</summary>

I think most of the answers to this question will be quite similar and are non-controversial (eg: @numinit 
 and @getchoo covered it well). The only thing I'd like to add is that this is a [primary responsibility of the SC](Management of Official Resources); acting upon the consensus and executing the decisions will take the most work. This involves a lot of coordinating across many communities and interested parties. My plan to address this is to establish clear responsibility to execute these decisions, because otherwise they become "decisions without action".
</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2381534438">link</a>)</summary>

> We value experimenting with designs and concepts, and folding successful experiments back into continuous improvement for stable components.
    - https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#stable-evolution-over-stagnation-or-chaos

Some fragmentation is value-add, and allows for people to explore new ideas and concepts. I see Tvix as a good example of this, exploring alternative hashing schemes and showing what is possible if we rethink many of our assumptions.

Some fragmentation is zero-sum (or negative sum) and can be harmful if it is done in an interfering manner. I would encourage any fragmentation efforts to maintain compatibility and encourage re-use as much as practical so that overall Nix adoption benefits from network effects or can be folded back in.

Fragmentation itself is not specifically a bad thing, but it can take different forms, good and bad. The question asks about strategies and actions to promote cohesion; I think part of the answer is that the SC should avoid trying to pick "winners", but instead provide resources and support for various projects because we don't really know up front what is going to be the best approach.

> We focus our attention on working together on our shared goals and working separately in a non-interfering way when our goals are independent.
    - https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#distribute-decisionmaking-widely
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2381516974">link</a>)</summary>

Our values include focusing on [automation](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#automation-over-process-and-toil1), and that is an obvious way to mitigate the problem. There are efforts such as the [nixpkgs-merge-bot](https://github.com/NixOS/nixpkgs-merge-bot) that can hep here as well as better contribution guidelines and onboarding additional contributors.

A specific thing I would like to start a discussion about is the lack of formal Nixpkgs teams. The largest and most valuable portion of our ecosystem is Nixpkgs, and is has no clear ownership as a whole or in for many sub-areas. This also means that Nixpkgs contributors often have a less clear voice into the Foundation and organizational matters, when they should. It also means they have less access to resources. Due to much package management being non-conflicting, a lot of Nixpkgs does not need formal ownership by established teams (a good example of ["distribute decsionmaking widely"](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#distribute-decisionmaking-widely)), but certain core areas and people do serve as an escalation mechanism for when things become stalled, or need a decision, or to provide a technical conflict resolution. There are [efforts to be more clear about ownership in the community](https://github.com/NixOS/org). One can see a few teams that have already naturally coalesced, "staging", "darwin", "compilers", "pythonPackages", "CUDA" and so forth. The exact breakdown should be fluid, but the overall idea is to encourage self-organized groups to be identified and provide them with the support they need. 

This creates a situation where PRs have a clearer escalation mechanism if they are stalled, provides ownership (both authority and responsibility) to manage the problem, and helps break it down into a more manageable problem.
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2381457961">link</a>)</summary>

A specific responsibility of the SC is "ensuring that decisions are made explicit, along with their origins" [ref](https://github.com/NixOS/nix-constitutional-assembly/blob/main/constitution.md#steering-committee). There will be the standard mechanisms, such as meeting notes, open meetings, Q&A, published decisions, announcements. I'd go further than transparency and say I think there is also a duty to be available, thus hosting office hours and being generally active would prevent a breakdown in communication.

Another responsibility is "Creation and Management of Teams". So the SC should be aware of what they are doing and help disseminate information about what they are doing as well as create accountability regarding allocated resources.
</details>

### What your thoughs about a NixOS-like thing for clusters? ([link](https://github.com/NixOS/SC-election-2024/issues/117))


A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/117#issuecomment-2395247348">link</a>)</summary>

I like the idea. I suspect it would take the form of congruence at the infra-layer and convergence at the system layer. There are some experiments along these lines already that people should be familiar with, especially the Disnix family of tools: https://github.com/svanderburg/disnix

From what I can gather, I think the proposed system could be implemented in the NixOps4 work-in-progress.
</details>

### What are your thoughs about integrating distributed stores into Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/113))


AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/113#issuecomment-2395272713">link</a>)</summary>

The Store layer of Nix is a quite powerful concept and I'd love to see more exploration of additional variations. I suspect there are some niche use-cases and some that would be generally useful. Specifically about ipfs-nix, I think we need to see a "killer app" to really get it adopted.
</details>

### What is your opinion on garbage collecting the cache ([link](https://github.com/NixOS/SC-election-2024/issues/96))


The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/96#issuecomment-2381538802">link</a>)</summary>

The latest progress I know of is [my](https://discourse.nixos.org/t/2024-06-06-re-long-term-s3-cache-solutions-meeting-minutes-6/46617) and [Valentin's notes](https://discourse.nixos.org/t/2024-07-10-long-term-s3-cache-solutions-meeting-minutes-7/48821). @edef has been the primary person spending time on the data analysis and understanding the costs. I think the next steps would be to copy the historical cache into long-term, infrequently accessed (cheap) storage. This can still be available for researchers or portions restored if they are commonly required. This reduces costs, provides a fallback, and gets us comfortable working with the scope of the problem. Next, we garbage collect unreachable and old paths.

Note: There is also an investigation to look at Tigris as a better storage provider; it remains to be seen if this is viable.

Then we turn our attention to the problem of the rate of growth. Here we can split the problem into providing a CI/building cache, and one for users. The CI/building cache can be cleaned out more aggressively and is available for PRs, staging, etc. The user-facing cache would be more long-lived. This comes with additional complexity, but can be used to slow the rate of growth.

Luckily, we got an extension of support from AWS sponsoring our cache, but we do need to continue efforts to reduce costs. This sort of work is high-impact, requires a budget, and requires commitment, and thus should be coordinated. Related to this need is a proposal to establish the role of a Executive Director. That is a larger topic, but such a role would be responsible for coordinating and enabling the people working on this problem.

A specific effort I would like to pursue is to discover who are the high-volume users of the cache and either ask them for funding or work with them to mitigate the costs they incur.

Another solution is to encourage enough Nix adoption as critical infrastructure so that we can obtain more partnerships, sponsors, grants, and funding to cover the cache costs.
</details>

### How will you ensure the financial sustainability of Nix without compromising its values? ([link](https://github.com/NixOS/SC-election-2024/issues/47))


How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2381455679">link</a>)</summary>

We need additional adoption by institutions that have the incentive and means to help with our financial stability. This means additional grants, sponsorships, and partnerships. It means expressly approaching and asking our users for support that is for agreed upon terms (eg: a year) and renewed. This means we have regular check-ins and an ongoing relationship with them; often that [relationship is more important the funds themselves](https://github.com/NixOS/nix-constitutional-assembly/blob/main/values.md#people-come-first). We mitigate the risk of corporate capture by ensuring we have broader adoption so that no one interest dominates.

An example: engage with the largest organizations that rely on the cache to help make it sustainable. Same with Nixpkgs/NixOS. Convince them that in-house efforts would be made easier by supporting upstream.

I am specifically interested in pursuing additional grants. These need skill-sets for grant writing, project management, and consistency over years to really bear fruit, thus likely dedicated personnel to manage. Our relationship with [NLnet](https://nlnet.nl/) is an example of a relationship that should continue to grow. Other mechanisms are to consider non-financial support; services and dedication of people's time.
</details>

### What do you believe is the most pressing technical issue facing Nix, and how will you address it? ([link](https://github.com/NixOS/SC-election-2024/issues/16))


What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/16#issuecomment-2381436886">link</a>)</summary>

The most pressing issue facing Nix is ensuring we have clear decisions, clear delegation, and clear ownership of efforts. This is meant to improve the contribution experience and increase our capacity to solve the technical issues we face.

While it is not the role of the SC to make the specific technical decisions, I have an interest in improving the build infrastructure, the cache, and stabilizing experimental-features.
</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2024/issues/12))


How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/12#issuecomment-2381436437">link</a>)</summary>

Engaging the community requires participating in community as well as active outreach. I would also consider it a duty to be easily reached and available, thus one specific mechanism I would employ is to hold regular Office Hours. I've held these in [the past](https://discourse.nixos.org/t/nix-office-hours/11945) for technical matters and I've seen the [NCA](https://github.com/NixOS/nix-constitutional-assembly/blob/main/office-hours.md) hold them to gather additional input for governance.
</details>

## Unanswered questions
<details>
<summary>What are your thoughts on adding analytics or crash/error reporting to `nix`? (<a href="https://github.com/NixOS/SC-election-2024/issues/122">link</a>)</summary>

Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?

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
<summary>Financial support for maintainers (<a href="https://github.com/NixOS/SC-election-2024/issues/108">link</a>)</summary>

Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?
</details>
<details>
<summary>How should we go about backwards compatibility? (<a href="https://github.com/NixOS/SC-election-2024/issues/81">link</a>)</summary>

Currently, we seem to be promising compatibility for stable branches, but in new releases, we are allowed to break "if necessary". Where do you think the line of "if necessary" should fall?

How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

Can you answer specifically about NixOS module options, as well as generally for nix community projects?

[1] ["There are only two ways to change software: growing it and breaking it. We don't break."](https://www.youtube.com/watch?v=oyLBGkS5ICk&t=1189s)
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
