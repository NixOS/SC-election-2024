- Name: Alexander
- GitHub handle: proofconstruction
- Email address: alex@proof.construction
- Discourse handle (optional): proofconstruction
- Matrix handle (optional): proofconstruction

### Conflict of interest disclosure

I'm currently a member of the documentation team, for which my work is and has been on a volunteer basis and unpaid.

I have used Nix at work extensively for several years, as an employee, as an independent contractor, and as a business owner, and I intend to continue doing so.

At a few times in the past, I applied for employment with companies which substantially used Nix, including some which are familiar names in this space. No offer of employment was extended.

I have no conflicts of interest at present, nor have I been party to any in the past.

Table stakes: I commit to avoiding any conflict of interest now and in the future (for example, by forgoing opportunities). Should a conflict of interest arise anyway, I commit to immediate and public disclosure, and further commit to either decisively resolving such conflict in favor of this community (for example, by terminating an existing business relationship) or recusing myself from all relevant obligations and responsibilities to this community.

### Motivation to be on the Steering Committee
In the praxicracy, everyone is invited to grab a shovel; contributing my time, energy, and skills to this effort is currently the highest-leverage way I can answer that call.

Nix is our best hope for mitigating the complexity-explosion of software packaging and deployment systems - and already does a phenomenal job serving that need - but the project stands at a crossroads: while some would see progress continue along existing lines, with individual interests driving development, others prefer the formation of new structures to organize within and a move to higher-order orchestration; the Steering Committee is the first expression of the latter.

To adequately serve the rest of the NixOS organization and the broader community, the Steering Committee needs clarity of purpose and effective decisionmaking to meet current and future challenges in scaling, funding, and elsewhere. It is my belief that these will be best achieved by a Committee whose members share the following traits, which I know of myself:
    - strong leadership abilities, particularly in public communication, consensus-building, and negotiation
    - a service-mindset, and unwavering dedication to the needs of the community and the broader mission
    - persistence in working towards goals, paired with a willingness to pivot and shift priorities as necessary
    - strategic foresight and accurate appraisal of how current activities lead to intended outcomes
    - familiarity and facility with the theory and practice of functional programming

#### What I have done
Primarily - and in my opinion most importantly - I've tried to address some shortcomings in the documentation. My personal interest here is in advancing the use of Nix and its ecosystem closure as the default computing methodology, bringing practical computation closer to a theoretical ideal and making computers more accessible to everyone. In Nix, as in all my teaching work, I try to accomplish this primarily by
- identifying what things are important to learn,
- evaluating how those things are taught,
- producing materials which teach those things more effectively and efficiently.

Often this looked like showing up to meetings of the Learning Journey Working Group to triage Issues and PRs, discuss narrative strategy, haggle over choice of wording, and so on.

When possible, I've contributed more visibly and substantially, to documentation pieces like the [packaging existing software tutorial](https://nix.dev/tutorials/packaging-existing-software) and the transcription of @infinisil's [module system deep dive](https://nix.dev/tutorials/module-system/deep-dive), or to the occasional message on Matrix, Discourse, and unofficial channels.

Outside of the docs work, I've assisted with the STF grant applications, including [the successful application](https://github.com/nix-community/projects/blob/main/completed/nixpkgs-security.md) to fund the [Nix Security Tracker](https://github.com/Nix-Security-WG/nix-security-tracker) project. While I didn't contribute to the code base during the initial stages, I've lately been devoting a few hours per week to hopefully get it over the finish line.

Like many projects, much progress happens off mailing lists and "behind the scenes", in verbal communication within informal meetings and direct messages. Some in the broader community know me best in this context, doing things like
- building consensus towards the creation of new teams. For example, while the [CUDA team](https://nixos.org/community/teams/cuda/) is doing *incredible* work, their focus is specifically on support for the Nvidia platform, and many agree (e.g. [INRIA](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/)) that we sorely need a team focused on bringing Nix to the high-performance computing space in general. (Our friends in the Guix project have an [HPC team](https://hpc.guix.info/) already!),
- lending additional eyes to active development work, often catching things others miss, suggesting useful refactors, or recalling definitions of things I've seen while spelunking in the source code,
- wordsmithing public releases to help ensure the organization is well- and accurately-represented, and
- agitating for better governance! Some of the responsibility for getting us to this election falls on me, after countless hours arguing about [how we ought to allocate our temporal and financial resources.](https://discourse.nixos.org/t/nixcon-governance-workshop/32705)

#### What I'll do
At this early stage, I can only responsibly commit to my intentions and actions rather than outcomes but here are some things I want to do:

- *Form new commercial and public partnerships*, to push Nix into more places across the software industry, and in turn get more dedicated developer time from those partners.
- *Establish a US-based foundation* as a North American counterpart to the NixOS Stichting, allowing non-European organizations to make financial or other contributions without worrying about the value-added tax.
- *Make Nix truly global*, forging bonds with our currently under-served friends in Africa, Asia, and South America.
- *Allocate the organization's funds to paying more contributors*, in an effort to make more progress faster, to reward the hard work of contributors to the ecosystem, and to bring new developers onboard the project.
- *Continue working to improve the official documentation*, especially for tutorials in the initial learning journey and how-to guides for common use-cases.
- *Support the moderation team*, to improve the level of discourse and keep the Nix community friendly and productive.

## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2396065141">link</a>)</summary>

In time, yes. Dependence on commercial entities for critical infrastructure is concerning, and over-reliance on a single entity (in this case GitHub) is simply too risky in the long-term. Migrating to self-hosted git infrastructure would allow more flexibility and better control over maintenance tasks and likely tighter integration with the rest of the infrastructure (e.g. build caching), but comes with substantial challenges: rewriting GitHub Actions workflows and bots like ofborg and r-ryantm, porting all of the historical activity for future reference, and rethinking human interaction patterns all carry significant costs in time and energy, which are already severely limited to begin with.

I expect we can collectively determine some reasonable path to standing up parallel infrastructure and integrations to automate some of the migration heavy-lifting, as well as producing a suite of checks to tell us when we're actually done, and then slowly move activity over to the new environment until we're ready to make the GitHub org read-only.
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2396064268">link</a>)</summary>

While I am happy for the organization to accept *donations* from anywhere that doesn't make the Foundation party to a money laundering scheme, but sponsorship agreements which amount to paid advertising should come under more scrutiny, and I would continue to develop the policy for handling these situations going forward. If an official event is being held in some venue, and the venue's regulations prohibit expression by certain industries, and an advertising agreement is under consideration with a party whose expression there would violate our obligations to the venue, we must have a framework in place to identify and prevent this scenario before the position and good name of the NixOS organization is jeopardized.

Some unstructured thoughts:
- I was born in the United States, into a large multicultural family of third- and fourth-generation European immigrants, many of whom came to America fleeing conflict. My great-grandfather was a sharpshooter in the US Army during WWII; my great-grandmother folded parachutes. "It's just how it was in those days". It's hard to escape. Many people are doing the same things today, as conflict finds them, and they are unable to escape. The past and present are terribly complicated.
- Depending on where we're located at any given time, I or my spouse, or sometimes both, are immigrants. I spent a few years teaching in China, which - according to many - was supposed to be a nation teeming with monsters howling for my ruin. All I found were friends. The world is not always, or even usually, "us versus them", and we should be deeply suspicious when anyone suggests otherwise: what are they trying to gain? Perhaps they are selling weapons.
- Throughout my career, I have repeatedly turned down opportunities to work in defense or national intelligence, even when I was running out of money and had no other options. As a mathematician, I have worked to block the US National Security Agency from recruiting at conferences. Academic colleagues and advisors close to me have foregone financial support from these organizations. I have no interest in participating in activities or projects which aim to make death. The world has plenty of death without adding more.
- As a teacher, I can't abide the thought of my students - the children of "the enemy"! - coming to harm by my actions, or by my inactions, or those of anyone I could've stopped. Some students, I have already had to mourn. This is a pain no one should ever feel.
- In America, much of our culture glorifies violence. There are people who revel in death, destruction, and the end of all things. Sometimes I wish death would visit them, so the rest of us may get on with things peacefully.
- There are organizations using Nix to develop machines for waging war. As an open source project, we cannot stop them from doing this. What we can do is say, unequivocally, that we condemn this use of our work. We can, if we choose, reject their code contributions, or their money. We can delete their posts and ban their accounts. We can wish them a very cheerful "go fall on your bombs". Sometimes I wish we could use their weapons to defend us from them, these people who would break everything anyone has ever worked to build. May they find the hell they work so hard for. It's disgusting. The worst of what we are, turned away from what could be. I want no part in any of it.

I'd merge the PR. It's the least I can do.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2396098878">link</a>)</summary>

It's crucial to differentiate between the changes to the `nix` command, the `flake.nix` and `flake.lock` file specifications, and the various other things people mean by "flakes". @samueldr has a great write-up of this [here](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html), which I broadly agree with. In summary, the bundle of changes commonly called "flakes" did both too much and not enough, and is a clear example of what-not-to-do and how-not-to-do in the future.

While I consider the `nix` command changes to be important improvements in usability (though we still need to do something about nixos-rebuild), and would like to see them land in stable nix, actually accomplishing this is difficult at least in part because of the way the changes landed in unstable and how they're tangled up with the other stuff.

For my own systems, I've used flakes for years (it's a decent-enough entrypoint to multi-system configs), and have even contributed `flake.nix` files to various other projects, but I actually recently started to refactor my personal configs to remove `flake.nix` and `flake.lock` in favor of an `npins` solution that I find conceptually nicer, though in need of polishing.

As a functional programmer and Nix user, I am frustrated that the `flake.nix` specification defines neither a function nor a valid Nix expression. There's nothing there to stabilize.
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2396087655">link</a>)</summary>

[home-manager](https://github.com/nix-community/home-manager) has been a great gift for desktop users, enabling configuration of many different and unrelated pieces of software with the same Nix module system. I use it to define configuration for several tools I rely on, and I'm very grateful for its existence; it was one of the features that originally made me fall in love with NixOS on the desktop, and I also know this to be true of others in the community: its value as an onboarding nice-to-have cannot be overstated. However, the current implementation suffers from some significant drawbacks which merit reevaluation before it could be reasonably upstreamed. I would support a desktop-focused UX team addressing these issues.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2396073848">link</a>)</summary>

I primarily use FLOSS software in my work, both because I broadly agree with the philosophy and because I've been harmed firsthand by proprietary tooling in the past.

See: [the four software freedoms](https://www.gnu.org/philosophy/free-sw.en.html).

I believe that the Nix community already does a great job adhering to these principles, but there's a lot of ground to gain by improving the organization's copyright and trademark control, restricting the use of the NixOS snowflake logo for example, as well as in better delineating the role commercial entities may play in the community.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2396066392">link</a>)</summary>

As answered in #16, I would like to eventually achieve full reproducibility and ultimately remove the need for significant caching infrastructure, but in the meantime we should consider alternatives to the present situation. Self-hosting comes with considerable challenges and would require significantly more infrastructure support which we presently have neither the labor power nor the financial capacity to address.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2396054770">link</a>)</summary>

I would like to see nix-community continue as an informal staging ground for new developments before they're ready for upstreaming into the NixOS organization. nix-community is the ideal setting to work on implementations of extensions addressing some RFCs, for example, as well as important projects like home-manager. Since this is the primary pipeline for upstreaming, I do believe that it should be under the purview of formal governance structures, but it's also important for the nix-community org to enjoy a higher degree of autonomy than the main organization, so we can try things that might be breaking changes or other serious departures from the upstream status quo.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2396090380">link</a>)</summary>

If anything, I think nixpkgs should be scaled *up*, and recent nixpkgs architecture developments like by-name are a great step towards facilitating that. As noted in my answer to #97, the issue is rather one of logistics: at all times, we must effectively allocate our resources to accomplish as many of the most impactful goals as possible.
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2396086431">link</a>)</summary>

Nix has been remarkably successful so far, without much or any cohesive vision, but I believe work must be done to gather ideas from the various projects being developed across the ecosystem - including unofficial projects - and synthesize these into a plan for the wide-scale development effort. Various teams currently labor in relative isolation from each other, but by coordinating their efforts and ideas we could surely go farther, faster. Articulating this plan and adhering us to it would be part of the mission of the [Executive Directorate](https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2396080995).

As I answered in #16, I believe pursuing 100% reproducibility is a very high priority, and would unlock a lot of other things downstream.

Beyond this, I only have one specific technical goal for Nix itself: to revisit the original idea and seriously consider a first-principles rewrite. It's my opinion that the early decision to build Nix in C++ (and Perl, and some other stuff) was a pragmatic and reasonable *mistake*, at least in the sense that much effort has been expended implementing features which are already present in languages better suited to the task (e.g. Haskell), which distracts from the core mission. The Nix we have today is large, complicated, and inflexible in ways that pose a serious concern, while the initial ideas were clean, simple, and beautiful. I believe we could achieve something much closer to the original concept, which would not only make the codebase easier to reason about but also make it more straightforward to onboard new contributors, ensuring Nix's continued success and *maintainability*, far into the future.

I would source other ideas for future technical direction from members of the community working on projects in various areas.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2396080995">link</a>)</summary>

While the Constitutional Assembly was drafting the constitution, I gave some feedback which amounted to "we should separate the *legislative* power of the Steering Committee from the *executive* power of a to-be-created Executive Directorate". The Executive Directorate would be headed by the Executive Director, which would be a *paid, full-time* position, to which the leads of official teams would report. An early draft of the proposed constitutional refactor can be found [here](https://github.com/proofconstruction/constitution-changes/blob/main/executive-directorate.md).

The primary motivation behind this change is to improve accountability: there would be one central reporting structure, one person ultimately responsible for outcomes delivered by the official teams, and a final arbiter of disputes.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2396078360">link</a>)</summary>

Unofficial spaces like the Reddit and Discord are comfortable contexts for many to engage in, and I have personally participated in discussions on both of these platforms. I don't believe that these platforms should necessarily fall under official purview, or even that they meaningfully *can*. We are in no position to compel compliance, and attempting to do so would just overextend the existing moderation team and send some discussion to other platforms. In the interests of easing the burden on the moderation team, and of maintaining spaces for unrestricted expression, we should leave these platforms alone.

However, I do believe that steps should be taken to improve the experience for participants on the *official* platforms. The unfortunate fact is that when a commercial entity offers space to communicate "for free", the participants are themselves the product (e.g. [OpenAI training models on Reddit posts](https://www.theverge.com/2024/5/16/24158529/reddit-openai-chatgpt-api-access-advertising)). Perhaps worse, a lot of Nix-related technical and procedural knowledge is recorded only in these spaces, which prevents discoverability (especially in the case of the unofficial Discord). Making the official platforms more comfortable will promote their use for a larger portion of the broad community's communications, which will have several positive effects.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2396049418">link</a>)</summary>

This is a super important issue to me, especially since poor handling of these issues was directly responsible for a lot of challenges we've recently faced, including especially some high-profile departures and the general community fracture over the NixCon 2023 sponsorship debacle.

First, since we cannot assume that the demographics of the general world population are reflected proportionally in the Nix community, I would begin by consulting data sources like the community survey and self-reports to understand which classes actually constitute minorities in the Nix community. Two examples of why this matters:
- while trans people constitute a small minority in the general population of the United States, they're comparatively rather well represented in the US software industry, particularly in functional programming communities.
- China has the largest national population on Earth, and there is an important and quickly-growing Nix community there, but due to the language barrier and the domestic internet being largely self-contained, our English-speaking community contains very few mainland Chinese Nix users.

I consider it crucial to establish an environment that is welcoming to as many people as possible, both because it's generally unwise to exclude people without good reason and because diverse inclusivity is just part of being a good neighbor in our rapidly-changing world. I want to revisit the historical community survey data to understand how our community's demographics have shifted over time, particularly correlating this with other data from Discourse and Matrix, and in consideration of the effects of past events. Part of this work will involve reaching out to people who have left our community, to understand the factors that went into that decision, and to learn whether there's a path to their return. By synthesizing all of this information, we'll be able to chart a better path in the future.

On the Committee, I intend to host regular informal open calls where community members can join to ask questions, make suggestions, or just meet to chat. I also plan to hold "office hours" where I'll set aside time to sync up individually with anyone who doesn't feel empowered to speak out during the open calls. I expect that having more casual settings like this will help us all get to know each other a bit better, and help us find more common ground on which to walk forward, together.

I hope this election results in a Steering Committee whose membership is multiply-diverse. Figuring out how to work together in the context of the Committee will help inform how the broader community can collaborate more effectively.

To anyone reading: whether or not I'm elected, know that you're always welcome to drop me a message.
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2396101740">link</a>)</summary>

The inactivity mentioned here is part of my motivation for wanting to serve on the Steering Committee. I want the Nix family of projects to thrive, and to do so the community increasingly needs responsive and effective leadership.

Fundamentally, the governance changes are about *getting results*, on both a technical level and a social one: the projects will wither if their development needs are unmet, and the community will dissolve if the coordination issues are not addressed. In service of that aim:
- if directives are "litigated" (I'm taking this to mean argued-with): I would work towards improving mutual understanding and consensus around the planned activity, especially since in doing so we may discover that *I'm* the one who didn't have some crucial piece of information! Knowing that you may be wrong is a normal part of leading well.
- if directives are ignored or de-prioritized, I would first try to understand why this is happening and work with the assignee to address any issues, and if these are unresolvable (especially in the case of time pressure) I would work with the rest of the Steering Committee to reassign the request to another party who could complete it as needed. It's not uncommon for me to need tasks reassigned away as my schedule shifts to accommodate other responsibilities. Delegation and stepping-away are other important behaviors of effective leaders.
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2396089734">link</a>)</summary>

I'm sympathetic to the Nix-on-darwin use-case, and I occasionally use Nix on darwin myself, albeit frequently in anger. I'm typing this on an M1 iMac which does *not* have Nix installed, because a recent system update broke *everything* in hard-to-understand ways, and I ended up just wiping the machine instead of lose more time fighting with this. Demoting darwin would not be so much a political decision as a more honest reflection of the current situation: Apple doesn't care about the experience of users of their platform, beyond the use-cases envisioned by Apple, and even that's highly contentious. Darwin support is a nice-to-have in the same way that Windows support could be. In principle, we should be able to target these platforms without much additional maintenance, simply because - as I mentioned in my answer to #50 - we deserve a more capable Nix, for which the runtime platform for any package is abstracted away. Unfortunately, that's not today's reality, and supporting platforms other than x86_64-linux and aarch64-linux is both a distraction from other more important goals and a frustrating experience for users who expect better. The question is not so much "should we support non-Linux platforms?" (we should!) as "where should we allocate time/energy?", and I don't believe supporting darwin is a great use of the Foundation's limited resources.

With that said, and I believe this is a *great* opportunity for commercial partnership, as I've indicated in other answers. Plenty of businesses are all-in on darwin as a development platform, and I expect many would happily pay for this support. It is already the case that commercial users of Nix help to support Nix on darwin (e.g. the IOHK cache; thanks as always for hosting public infra!), and for some like Determinate Systems, darwin support is even an important component of the business strategy.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2396053455">link</a>)</summary>

Strong affirmative to both questions. The declarative approach is crucial both for effective static analysis and for useful version control. In the context of NixOS deployments, being able to reference the current configuration files and have a high degree of confidence in the runtime state is absolutely invaluable. Future expansions on this theme will be very welcome; I'd especially like to see a Nix-based answer to database state, particularly with declarative migrations.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2396113895">link</a>)</summary>

Collecting metrics like this can be very useful, especially for diagnosing issues that only appear at the population level. I would want any reporting tools to be strictly opt-in, first out of concern for privacy and second because ingesting large volumes of logs from all over the world quickly becomes a nontrivial engineering problem.

Crash analytics on platforms with less support (e.g. darwin) are a major place this data would be useful, and I can imagine others, but I suspect the majority of the really important data we could be gathering should really be done via survey (for example, asking commercial users about which modules they use for their production deployments, and any pain-points they've encountered).

I do believe if there was sufficient justification, limited scope, and full transparency (e.g. the source of the metrics agent is stored in the NixOS GitHub org, available through Nixpkgs, built by Hydra, etc.), we could achieve broad consensus agreement for gathering some kinds of data.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2396105605">link</a>)</summary>

In fact, this is precisely the motivation behind [RFC 134](https://github.com/nixos/rfcs/blob/master/rfcs/0134-nix-store-layer.md)!
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2396104282">link</a>)</summary>

On the surface, this seems like a good idea. I can think of a few ways this might be implemented today, and it should be substantially easier still once content-addressed derivations land (handwaving some very important architectural assumptions, of course).

I invite anyone to submit an RFC for this! We could learn a lot from our Guix friends.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2396094463">link</a>)</summary>

While the majority of my time has not been spent making top-level decisions in organizations so large, I have spent considerable time *supporting* the use of software in organizations of many hundreds or thousands (especially in various universities, within which I've spent several years supporting various departments), and in these contexts my decisions have had some effect on large numbers of people.

To address what I take to be the spirit of this question, our community needs more than just software-focused know-how. We also need leadership that is:
- **visionary**, able to integrate disparate sources of information into a coherent vision of where we're at and which direction we must head,
- **inspiring**, gifted in not only presenting the facts but also of motivating action, particularly by reproducing these behaviors in others, and
- **empathetic**, willing to break down barriers and bridge divides to keep the community collaborating towards our shared goals

In light of these, I believe the most important experience I bring is not that of a software leader specifically, but rather of a systems-thinker and educator in general.
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2396091081">link</a>)</summary>

As I discussed in my answer to #11, community projects that want to become official should first move to the nix-community GitHub organization where they can be further developed with upstream integration in mind. Officially adopting projects into the NixOS organization should probably happen via the RFC process, where we could answer questions like the following:
- does this project fit the broader strategy and goals of the official organization?
- do we have enough maintainer support to make this project official?
- what other impacts, both positive and negative, will result from this project's officialization?

Projects that do ultimately become official should receive the same treatment as any others: dedicated development and maintenance effort as part of the broader roadmap of the organization.
</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2396088806">link</a>)</summary>

I have mixed opinions on this. On one side, I tend to agree with the "let one thousand flowers bloom" principle, leaving space for people to fork projects and develop in new directions. This is a powerful signal of a healthy open source community, and is a crucial component of [Free Software](https://www.gnu.org/philosophy/free-sw.en.html) in practice.

At the same time, our community is surprisingly small and sparse, with just a few dozen people doing the majority of the heavy lifting; when they leave, it hurts, even if we take some time to feel that loss.

One reason I'm motivated to pursue stronger governance for the Nix ecosystem is that I know we can "have our cake and eat it too": by developing procedures for coordinating effectively and respectfully, we can keep the door open for differing technical opinions while still working together in unity towards our common goals. This work starts with a commitment from each of us to honest and open collaboration, and to continued cross-pollination of ideas and approaches between projects. I think we've collectively already been doing a good job here, though I acknowledge we've stumbled at times. We'll get there, and we'll do it together!
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2396088157">link</a>)</summary>

The current state of open Issues and PRs in Nixpkgs is frustrating, and I see the occasional self-merge as an expression of this frustration. This issue is perhaps the best example of why we simply need more resources to throw at these kinds of problems. Maintenance of any single package is a serious task - moreso when the dependency tree is deep or complicated, as we often see - and Nixpkgs is the largest repository by a large margin, so adequately dealing with this necessarily requires more from us than from other projects.

As indicated by my answers to other questions, a major focus for me is finding ways to *pay maintainers for their work*. One way I'd aim to do this is by forming relationships in which commercial organizations could pay the Foundation to support some packages they care about, with the Foundation compensating the relevant maintainers accordingly.

I believe that with enough planning and effort, we can eventually achieve "inbox zero" for open PRs, and we can do the same for the open Issues too.
</details>

### What are your thoughts on cross-compilation? ([link](https://github.com/NixOS/SC-election-2024/issues/121))


What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/121#issuecomment-2396113023">link</a>)</summary>

I don't really think about cross-compilation at all, truthfully. The only time this has really mattered to me personally has been compiling stuff that will run on my Raspberry Pi, but for this I just spin up an aarch64-linux machine in AWS. Writing some Terraform to handle provisioning the build machine and running my jobs was easier than thinking about rigging up qemu to do the cross-compiling. Perhaps this comes up more when bringing up support for new platforms?
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2396108378">link</a>)</summary>

Once upon a time, I was a Gentoo user and built everything from source. It was pretty painful as a casual desktop Linux user, especially when I'd update things like the KDE suite or Firefox and leave my poor Pentium to burn for days at a time. These days, I have a much better appreciation for why we'd want to strive towards source bootstrapping, particularly as I work to package things from sectors of the tech industry with less software engineering sophistication. Nix, NixOS, and most of Nixpkgs already have a good story here, and where things fall short is mostly out of our control anyway. While I believe this is an important goal in general, I don't currently believe this issue should take precedence over some of the other things we need to address.
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2396098375">link</a>)</summary>

I have many thoughts! We already pass everything through hash functions so ca-derivations is an obvious next-step in Nix's future. To be a bit suggestive, in principle we could precompute the hash of all valid Nix files of a certain family (e.g. valid configurations for a given NixOS module) to know in advance what derivation a hash refers to and what sequence of bits is produced by its realization. I won't say more yet as this is not the right venue for this discussion, but this is closely related to other ideas that motivate my discussion in #50 of the need to revisit Nix from first principles.
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2396097758">link</a>)</summary>

I mentioned in my answer to #83 that I'd support a desktop UX team to work on improving and upstreaming home-manager, and I believe such a team should also be responsible for gathering data about how people use Nix today and how they'd *like* to use Nix in the future, then defining personas and user journeys with that information.

We need to meet people where they're at, and that requires actually finding out where that is. I'd want a UX team focused on clarifying these questions and developing good answers.
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2396082708">link</a>)</summary>

Transparency and accountability are important ideals to hold as guiding lights in our work. I'd quickly publish notes following Steering Committee meetings (as I have done for Documentation team meetings), work to establish the Executive Directorate and develop a reporting structure along the lines described [here](https://github.com/proofconstruction/constitution-changes/blob/main/executive-directorate.md) to bring better visibility into the organization's activities, publish guidelines and processes by which decisions are made, and hold regular open community calls to deliver updates, answer questions, and generally be present and visible in the community, as noted in my answer to #7.
</details>

### What your thoughs about a NixOS-like thing for clusters? ([link](https://github.com/NixOS/SC-election-2024/issues/117))


A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/117#issuecomment-2396106230">link</a>)</summary>

This is an important concern. Some of us run Kubernetes on NixOS hosts for some workloads, but this necessarily means dealing with bad formats like YAML. Projects like [kubenix](https://kubenix.org) are attempting to address this, but there are very few industrial cluster operators in the NixOS community, so the adoption pace is glacial at best. I have some (unpublished, sorry) work in this direction but frankly it's a very low priority currently. K8s-on-NixOS marries the NixOS we love with the k8s the broader industry is familiar with, so it's Good Enough For Now.
</details>

### What are your thoughs about integrating distributed stores into Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/113))


AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/113#issuecomment-2396100890">link</a>)</summary>

I think distributed stores are a great idea for several reasons, but here are my top two:
- it could help take some of the burden off the S3 cache by moving less-used artifacts out to the community actually using them, and this would in turn allow us to reduce spending considerably
- in an era of rapidly intensifying climate change, decentralization will be ever more important; distributing (parts of) the cache will make it possible for isolated communities (e.g. Nix users in Appalachia right now) to continue working even without connectivity to the wider internet.
</details>

### Financial support for maintainers ([link](https://github.com/NixOS/SC-election-2024/issues/108))


Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/108#issuecomment-2396095943">link</a>)</summary>

Absolutely yes! This has been a common thread in many of my other answers (see #47, #84, and #97); compensating maintainers will do a lot to improve the long-term sustainability of the project, and we'll be able to accomplish many more of our goals if we can assemble the funds to pay just a handful of people to do this work full-time. Even better news: the numbers we need to hit to make that possible aren't even very far away!
</details>

### What is your opinion on garbage collecting the cache ([link](https://github.com/NixOS/SC-election-2024/issues/96))


The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/96#issuecomment-2396089188">link</a>)</summary>

Disk space is cheap these days, but caching the whole history of the world can still be wasteful; we must balance availability with utility, and a good start to doing so would be to survey stakeholders in the ecosystem to find out what people are doing that would require all these historical build artifacts. As discussed in my answer to #16, I believe achieving full reproducibility is an important step towards addressing this, since we could readily empty most of the cache, confident that we could rebuild anything we needed in the future. In the meantime, we can address cache bloat by other means, such as distributing artifacts among more parties (no longer relying exclusively on S3), or by moving more of the cache to "cold" storage.
</details>

### How should we go about backwards compatibility? ([link](https://github.com/NixOS/SC-election-2024/issues/81))


Currently, we seem to be promising compatibility for stable branches, but in new releases, we are allowed to break "if necessary". Where do you think the line of "if necessary" should fall?

How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

Can you answer specifically about NixOS module options, as well as generally for nix community projects?

[1] ["There are only two ways to change software: growing it and breaking it. We don't break."](https://www.youtube.com/watch?v=oyLBGkS5ICk&t=1189s)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/81#issuecomment-2396087043">link</a>)</summary>

Nix offers an unparalleled story for backwards compatibility, or it *could*, with some architectural changes (and should!). It's entirely reasonable to expect that a future iteration will enable module- or even function-level version pinning, allowing for trivial backwards compatibility of critical components while the rest of the system moves forward.

I'm happy to stick to the current pattern of ensuring compatibility for supported stable branches while allowing for breaking changes in the unstable branches.

Projects under the nix-community organization, unofficial as they are, have different expectations. As I answered in #11, I consider nix-community to be the development and staging ground for new feature additions to the main projects. While the specific details of those features are worked out, one should expect possibly-frequent breaking changes.

In #16 I discussed the full-reproducibility goal, and this applies here also: achieving perfect bitwise reproducibility will go a long way towards satisfying some maximal vision of backwards-compat.
</details>

### How will you ensure the financial sustainability of Nix without compromising its values? ([link](https://github.com/NixOS/SC-election-2024/issues/47))


How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2396082159">link</a>)</summary>

The need to dramatically improve financing in the Nix ecosystem has never been more clear to me. In service of this and other goals, I would work on the following:
- improving collaboration with other aligned organizations (e.g. the Haskell Foundation) to pursue mutually-beneficial projects which may receive larger volumes of funding from public sources like NLNet and the STF.
- devoting resources to outreach and establishing partnerships with commercial entities to achieve things like better job placements for Nix community members (get a Nix job!), dedicated corporate-sponsored developer time to work on Nix ecosystem projects (work on Nix at work!), and financial sponsorship of Nix events (bring work to Nix!)
- establishing a US-based counterpart to the existing NixOS Foundation, which would better allow organizations in the Americas to make financial contributions without the European VAT.

As answered in #17, I would work to strengthen the sponsorship policy in accordance with the community's ethics.

One alternative funding model I'm interested in pursuing is for the Foundation or a subsidiary organization to offer paid support and development services to other organizations. This would let organizations seeking to adopt Nix technologies hire members of the community to build that capacity internally, while also financially benefiting the organization, and providing a central place for this work to be procured.

Finally, as noted in #16, improving the reproducibility story would allow us to drop a large recurring caching expense and focus these funds towards other goals.
</details>

### What do you believe is the most pressing technical issue facing Nix, and how will you address it? ([link](https://github.com/NixOS/SC-election-2024/issues/16))


What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/16#issuecomment-2396056900">link</a>)</summary>

Bit-for-bit reproducibility. Once reached, this will be a crowning success not just for our community but across the entire software industry. With full reproducibility, Nix will immediately be a very attractive option for organizations looking to achieve goals like demonstrating compliance with frameworks like SOC, having more confidence in security posture, or generally moving faster while breaking fewer things. Most importantly for us, it will let us retire much of the cache since old package versions may then be readily rebuilt at any future time, which in turn will remove a major expenditure from the budget, freeing up funds for supporting other important projects in the ecosystem.

To prioritize addressing this, I would dedicate funds to support development time from a team devoted solely to this issue.
</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2024/issues/12))


How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/12#issuecomment-2396056028">link</a>)</summary>

As mentioned in my answers to #7 and #48, I plan to hold open community calls to deliver updates on recent progress, answer questions, and just be generally available and welcoming. This will give the broader community a synchronous forum for discussion and participation, as well as a chance to connect and become more familiar with myself and others on the Steering Committee. It's also a way to ensure accountability: if you disagree with decisions or have concerns you feel have not been heard or fairly considered, you can call it out there.
</details>

### Forge agnosticism ([link](https://github.com/NixOS/SC-election-2024/issues/120))


What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/120#issuecomment-2396109358">link</a>)</summary>

This is essentially a duplicate of #18.

I'm in the process of winding down my personal GitHub usage and moving my projects to a self-hosted Forgejo instance. As I answered in #18, I believe we can eventually do something similar for the NixOS org in its entirety, and we should work towards that.
</details>

### Should NixOS/nixpkgs adjust its platform support? ([link](https://github.com/NixOS/SC-election-2024/issues/106))


Of the currently supported platforms, are there any you think should be promoted to a higher tier or demoted to a lower tier? Are there any currently entirely unsupported platforms which should gain some level of support?

(bit of overlap with #97 with re: darwin specifically)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/106#issuecomment-2396095600">link</a>)</summary>

I've answered some of this in #97 in the context of darwin support, but I think there's also value in eventually targeting the Power ISA[1] (really!), and I'd like to see RISC-V[2] support happen sooner than later.

[1] I say this partly because it's a bit funny to think about, but also because a lot of important business logic runs on POWER, and probably will for the forseeable future. If we could bring the much higher degree of environmental control we normally enjoy to contexts like healthcare information systems and bank transaction engines, I'm sure we could deliver (and capture!) a huge amount of value across the global economy.

[2] RISC-V is the new hotness, and there's already a tremendous amount of energy behind its development. You can expect to see some very interesting things happen in the next few years. Look to the east.
</details>

### Which candidates would you like to work with on the Steering Committee? ([link](https://github.com/NixOS/SC-election-2024/issues/101))


If elected to the Steering Committee, which other candidates would you prefer to work with, and why?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/101#issuecomment-2396093435">link</a>)</summary>

Working alongside people in this community has always been a great privilege, and I'm happy to count many people I've met through Nix among my friends. I'm excited to work with any Committee combination, because in all cases I know we'll share a deep love for this community and a powerful drive to see these projects succeed.
</details>

### Securing contribution possibilities ([link](https://github.com/NixOS/SC-election-2024/issues/118))


What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/118#issuecomment-2396107850">link</a>)</summary>

I think that to some extent these issues would be addressed by [moving to an org-hosted git forge](#120), but I don't feel confident that I fully understand the question. Can you add more details?
</details>

## Unanswered questions
