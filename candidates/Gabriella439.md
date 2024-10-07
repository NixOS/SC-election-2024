- Name: Gabriella ("gabby") Gonzalez
- GitHub handle: @Gabriella439
- Email address: GenuineGabriella@gmail.com
- Discourse handle (optional): @gabriella439
- Matrix handle (optional): @gabriella439:matrix.org

### Conflict of interest disclosure

I am a principal engineer at [Mercury Technologies](https://mercury.com/blog/category/engineering), a company that uses Nix and NixOS extensively. I also am the author of the [NixOS in Production](https://leanpub.com/nixos-in-production) book.

### Motivation to be on the Steering Committee

I've been a longtime contributor, educator, and evangelist for the Nix community because I adore Nix to death and want to see Nix succeed.  I'm running for election because I have prior project leadership experience as the creator of [Dhall](https://dhall-lang.org/) that informs my views on project management and community governance.

#### What I have done

My headline contributions to the Nix ecosystem are:

- I authored the [NixOS in Production](https://leanpub.com/nixos-in-production) book

  This is a work-in-progress book I have been working to promote industry use of NixOS.  The book is both free as in beer (the minimum purchase price is $0.00) and free as in freedom (the [source material is publicly available](https://github.com/Gabriella439/nixos-in-production?tab=readme-ov-file#nixos-in-production) under a Creative Commons license).

- I created [`nix-serve-ng`](https://github.com/aristanetworks/nix-serve-ng)

  This is a drop-in replacement for `nix-serve` that I created and open sourced from my previous job which is not only more stable but also *significantly* more efficient than all of the alternatives.

- I created [`terraform-nixos-ng`](https://github.com/Gabriella439/terraform-nixos-ng)

  Anyone who has done professional NixOS deployments knows that the conventional wisdom is to use Terraform instead of NixOps.  However, the `terraform-nixos` repository went abandoned several years ago and I created a maintained successor project.

- I added [`darwin.linux-builder`](https://nixos.org/manual/nixpkgs/unstable/#sec-darwin-builder) to Nixpkgs

  This lets you run NixOS tests on macOS.  I did not build this singlehandedly, though, and built upon prior work to create a polished user interface.

I also have a decade of professional Nix experience.  I was the person who successfully introduced the use of Nix and NixOS at my previous job (Awake Security, acquired by Arista Networks) and I'm currently a principal engineer at Mercury (also a Nix/NixOS company and I'm the lead for all things Nix-related there).

… and those are just my Nix-related accomplishments!

Outside of Nix, I'm also the author of the [Haskell for all](https://www.haskellforall.com/) blog and the [Dhall configuration language](https://dhall-lang.org/), and I contributed a large number of open source projects, blog posts, and presentations for both the Haskell and Dhall ecosystems.  One of the most notable examples is my presentation on [How to market Haskell to mainstream programmers](https://www.youtube.com/watch?v=fNpsgTIpODA) where I explain how an open source ecosystem can gain mainstream adoption and traction.  I have been living and breathing tech evangelism for over a decade.

Moreover, I have direct experience with community management and language evolution.  In particular, for the Dhall ecosystem I set up all of the community infrastructure, set up community self-governance, the funding process, and also created [the language standard and standard evolution process](https://github.com/dhall-lang/dhall-lang/blob/master/.github/CONTRIBUTING.md) to promote the stable growth and evolution of the language ecosystem and the surrounding community.

#### What I'll do

My main goals are:

- [Focus on NixOS as the path to mainstream adoption](https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2379364129)

  Specifically, the community should build out a polished user experience for deploying and maintaining NixOS as a server OS.

- [Create a diverse, inclusive, and welcoming community](https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2378611472)

  I want the Nix community to be a safe haven for vulnerable minorities, including racial minorities and gender minorities.

- [Prohibit unethical or morally grey industries from promoting themselves using the NixOS trademark](https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2378125851)
  
  The intention is to forbid these industries from using the NixOS trademark in promotional materials (e.g. for recruitment or their engineering blog) and to prevent meetups or conferences that use the NixOS trademark from endorsing or accepting sponsorships from these industries.  These industries would still be allowed to contribute to the ecosystem and employees in these industries would still be allowed to participate in community spaces.

- [Change the Nix Steering Committee elections to use approval voting instead of CIVS](https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2377831158)
  
  This is a smaller thing, but I still think it's important.

## Q&A

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2378125851">link</a>)</summary>

I believe that the Nix/NixOS community should prohibit unethical or morally grey industries from using the NixOS trademark including (but not limited to) the arms industry and cryptocurrency industry.  For example, if the gambling industry were to suddenly catch Nix fever I'd propose adding them to the list of industry exclusions, too.

Such a policy would forbid these industries from using the NixOS trademark in promotional materials (e.g. for recruitment or their engineering blog).  This would also prevent meetups or conferences that use the NixOS trademark from endorsing or accepting sponsorships from these industries.
  
The Nix Steering Community can debate the exact set of which industries we exclude and whether a given company falls into one those industries, but we should not shy away from maintaining such a list of exclusions or such a debate.  Indeed, having a Nix Steering Community now makes it both possible and reasonable for us to effectively adjudicate which industries or companies conflict with our community's values and brand safety.  We have created the framework necessary to resolve nuanced and complex decisions so we should use it!

> Are you in favor of https://github.com/NixOS/foundation/pull/140

Yes, I would have supported merging that pull request.

Note that the pull request did not establish a fully comprehensive list of which industries to exclude, but it doesn't have to.  All of our governing documents are living documents that we can and should amend in response to the actual challenges that face our community (e.g. the uproar over the Anduril sponsorship).  Our community policy documents do not need to be infinitely forward-compatible philosophical treatises on ethics.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2391581306">link</a>)</summary>

The `flakes` and `nix-command` features should no longer be marked as experimental.  We already see a lot of pushback on any proposed breaking changes to either of those features, which indicates to me that they're no longer experiments and people already expect them to be stable interfaces.

One example of what I'm talking about is the `repl-flake` experimental feature, which is yet another feature flag that should not have been necessary if the `nix-command` and `flakes` feature flags were truly viewed as experimental.  The whole point of marking `nix-command` and `flakes` as experimental was so that we could iterate on them and make breaking changes if necessary, but if we're guarding further breaking changes behind even more feature flags then that indicates to me that our tolerance for breakage has gotten low enough to stabilize those features.
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2379364129">link</a>)</summary>

I've consistently advocated that Nix's path to mainstream adoption is using NixOS as a server OS, to the point where I [even created a book about it](https://leanpub.com/nixos-in-production).

I do think that it would be nice to improve Nix support for other use cases and I certainly won't stop volunteer contributors from doing what they want with their free time.  However, there are areas where we do need to pick one use case to prioritize, like:

- Documentation

  One of the reasons people complain about the current state of our docs is because the docs are unopinionated and trying to cover too many different use cases.  As a community we don't have a clear answer to "what application domain is Nix for?" and our documentation suffers because of that.
  
  For example, the current NixOS manual is geared mostly towards desktop users, but NixOS is (in my view) never going to be a mainstream desktop OS. I would support overhauling the manual to focus on the server-side deployment story and relegate the desktop-related documentation to a different resource (e.g. the NixOS wiki).

- Funding

  We should focus our funding efforts around building out a specific user experience for a target market and not spread our funding thin.  It's better for one market get an exceptional end-to-end experience at the expense of other markets rather than to try to play the field and give everyone a half-baked experience.  Targeting our efforts to produce a quality experience for one market will attract a cohort of mainstream adopters that will champion our ecosystem, give back to the community, and kick-start a virtuous cycle of mainstream adoption.
  
  Moreover, having a clear market that we cater to will make it easier to solicit funding from that companies within that market.  Companies are more willing to fund open source projects if they feel confident the project direction and leadership is focused on their particular industry's needs and not distracted by other priorities.

- Language evolution

  Every new feature we add to the Nix language or the CLI increases the surface area that the entire community needs to support, whether that's documentation, IDE tooling, or bug fixing and maintenance.  We want to make sure that any complexity we add to Nix is in service of building out a specific product vision and not pulling our ecosystem in yet another direction.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2377831158">link</a>)</summary>

I would change the voting process for the Steering Committee to use [approval voting](https://electionscience.org/library/approval-voting/) instead of using [CIVS](https://civs1.civs.us/proportional.html).  Specifically, given N open slots on the steering committee in any given election, voters would be allowed to vote for as many candidates as they liked (maximum 1 vote per eligible candidate) and the top N vote getters would be appointed.  Simple!

The main reasons I would propose this are:

- Approval voting is (much) easier to reason about

  Approval voting's simplicity makes it not only easier to implement, but (more importantly) it is also easier for voters to reason about.  In particular, the easier it is to explain a voting methodology then the easier it is for voters to reason about both past outcomes (increasing their trust that the best candidates were selected) and future outcomes (understanding how their potential vote would affect the outcome).

- [Approval voting yields Condorcet winners in practice](https://rangevoting.org/AppCW.html)

  In fact, the above article mentions that Approval voting is perhaps *more* likely to elect Condorcet winners than Condorcet voting methods.

  > Indeed – counterintuitively – it might actually be that Approval Voting is more likely to elect the Condorcet Winner in practice, than Condorcet methods! (Indeed, [experiments](https://rangevoting.org/StratHonMix.html) indicate that happens.)
  >
  > Why? Because in approval voting it is quite rare that strategically voting dishonestly, is wise. (And when it is wise, it is even [rarer](https://rangevoting.org/RVstrat2.html) that people will actually realize it and do it.) In other words, with Approval, people will tend to honestly order the candidates, and the only strategic decision they'll make is where to locate their approval "threshold."

- Approval voting satisfies the monotonicity criterion

  A voting methodology satisfies the [monotonicity criterion](https://en.wikipedia.org/wiki/Monotonicity_criterion) if voting for a candidate always increases their chances of winning.  Approval voting satisfies the monotonicity criterion and [Condorcet voting does not](https://www.sciencedirect.com/science/article/abs/pii/S0165176515000889)!  Yes, you read that right: voting for or ranking a candidate higher in Condorcet voting can sometimes harm their chances of winning!  This is what happens when you use an overengineered voting methodology.

- Approval voting consistently scores highly on voter satisfaction simulations

  Approval voting is typically only outperformed by voting methodologies that are based on score/range voting (*not* ranked voting, which is different and performs worse than approval voting).  This is why approval voting is widely regarded as the voting methodology that provides the highest "bang for the buck", meaning that it produces a very high voter satisfaction while being remarkably simple.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2378611472">link</a>)</summary>

One of my heuristics for helping communities feel more welcoming and inclusive is to avoid a few voices from dominating the discussion (regardless of their beliefs, background, or orientation).

A common anti-pattern in these discussions is that you'll have a few recurring individuals who are already very outspoken that feel entitled to an even larger voice in the community than they already have.  To be clear, it's actually very normal and okay for people to seek greater influence in their communities, but the failure mode is when these people don't receive the attention or influence they feel they deserve and then they *don't take no for an answer*.  Then what happens is you'll see these people try to artificially increase their influence by creating controversy or trying to force their way into community spaces that try to exclude them.

These sorts of people create an unwelcoming environment for **everyone else** (not just minorities), but vulnerable minorities are typically the first to leave because they have a much lower tolerance for this sort of behavior.

I also believe that the "punishment should fit the crime".  If a person engages in this sort of behavior a typical appropriate punishment is a temporary suspension from community spaces so that they can cool off, reflect upon what they've done, and give other people a chance to participate more.  This also offers a path for these people to improve their behavior and rejoin the community on better terms.  However, if they are repeat offenders and/or others begin to leave because of their behavior then I think a ban should be on the table.
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2393679434">link</a>)</summary>

The short answer is: borrow techniques from political activism because many of the tactics from political activism work just as effectively in open source communities.  I think a decent starting point is the [Activist Handbook](https://activisthandbook.org/).

The slightly longer answer is: activism in the face of any sort of entrenched power has to necessarily be creative and innovative so there isn't "one simple trick".  If you rely too much the same approach each time you will not get very far.  This is summarized well [here](https://beautifultrouble.org/toolbox/tool/dont-fall-in-love-with-your-tactics)

> Just because your tactic succeeded once, that doesn’t mean it will gain the same traction every time you use it. For one thing, your target will learn from their failures and respond differently if confronted with the same action. For another thing, people get bored of repetition and the media will more often than not avoid coverage of repetitive actions. Therefore, while you’re devising actions that directly serve your campaign objective and are in line with your strategy (see: [PRINCIPLE: Choose tactics that support your strategy](https://beautifultrouble.org/tool/choose-tactics-that-support-your-strategy)), try to be creative and original. Repetition can make your target immune to your actions, while an element of surprise can almost guarantee you a bigger impact. In other words, don’t become paralyzed by your success, or you’ll go down in history as just another one-hit wonder.

Instead, what you have to do is (A) be organized, (B) be persistent, and (C) be creative.  I know that's not a very satisfying answer (because each one of those things is a lot of work), but I think it's the correct one.

So, like, being on the Nix Steering Committee is just one of many levers that a person can bring to bear in a strategy to effect change, and even people who are not on the Nix Steering Committee can still effect a lot of change (and they have in many cases!).  Or to put it another way, I think the Nix Steering Committee's voting power is probably the least interesting power it wields and it can (and should) lean much more heavily on soft power through leadership and organization.
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2381133363">link</a>)</summary>

So take these anecdotes with a grain of salt but at my current job and my last job Darwin support was a must and (as the team that supported Nix at work) we went to heroic lengths to help people get Darwin working and keep it working.  For example, I [personally worked on fixing linker issues on macOS at my current job](https://github.com/NixOS/nixpkgs/commit/79484b17078c06763dafd4dcaab67aebc129dfd9) so I'm acutely aware of how painful it is to keep macOS working.

If the problem were fixable with greater funding I'd argue we should lean on that because I'm pretty sure most Nix shops struggle with macOS support and would definitely pay for it to be in a much better position because they're already paying a lot in terms of their own devs working on debugging/supporting/working around Nix-on-macOS issues and they'd probably get a much better bang-for-their-buck paying the Nixpkgs contributors already working on and familiar with this territory.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2391547881">link</a>)</summary>

I created [Dhall](https://dhall-lang.org/) and led the Dhall ecosystem for over a decade; for a large part of that time it was basically like a second full-time job for me.  Not only did I create the Haskell implementation of the language, but I also:

- created the [language standard](https://github.com/dhall-lang/dhall-lang/tree/master/standard#semantics)
- created the [standard evolution process](https://github.com/dhall-lang/dhall-lang/blob/master/.github/CONTRIBUTING.md#how-do-i-change-the-language)
- created and self-hosted [all of the Dhall shared infrastructure](https://github.com/dhall-lang/dhall-lang/tree/master/nixops#dhall-infrastructure) and [the website](https://dhall-lang.org/)
- mentored contributions to the ecosystem through Google Summer of Code
- did evangelism on meetups, social media, podcasts, conference presentations and blog posts
- wrote [almost all of the documentation](https://docs.dhall-lang.org/)
- set up [OpenCollective funding](https://opencollective.com/dhall)
- contributed [Nixpkgs](https://nixos.org/manual/nixpkgs/stable/#sec-language-dhall) and [Docker](https://hub.docker.com/u/dhallhaskell) support for Dhall
- participated heavily in language design and evolution discussions

Also, since you asked specifically about headline decisions directly attributable to me, a lot of [Dhall's infamous design decisions are documented here](https://docs.dhall-lang.org/discussions/Design-choices.html) including:

- forbidding `Text` parsing/interospection/equality
- very limited support for arithmetic
- very limited language support for sets/maps

… and those decisions are directly attributable to my influence over the language evolution process.  There were quite a few discussions where I had to argue against features that would have improved ergonomics but eroded the language's type safety guarantees or language security guarantees.
</details>

### Forge agnosticism ([link](https://github.com/NixOS/SC-election-2024/issues/120))


What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/120#issuecomment-2393605418">link</a>)</summary>

This might be a duplicate of https://github.com/NixOS/SC-election-2024/issues/18
</details>

## Unanswered questions
<details>
<summary>Should Nix transition away from GitHub to a self-hosted git forge? (<a href="https://github.com/NixOS/SC-election-2024/issues/18">link</a>)</summary>

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?
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
<summary>What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? (<a href="https://github.com/NixOS/SC-election-2024/issues/34">link</a>)</summary>

What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?
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
