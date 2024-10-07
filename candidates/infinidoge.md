- Name: Infinidoge
- GitHub Handle: Infinidoge
- Email Address: infinidoge@inx.moe
- Discourse Handle: Infinidoge
- Matrix Handle: @infinidoge:inx.moe

### Conflict of Interest Disclosure

I am a part of the Summer of Nix program doing Nix work for NLNet and NGI-nix.
Additionally, I was offered a potential later position doing Nix work by Valentin Gagarin (fricklerhandwerk).

I am a student at Purdue University studying Computer Science, and a member of both the Purdue Linux Users Group and Purdue Hackers.

### Motivation to be on the Steering Committee

#### What I have done

I have made a number of contributions to Nixpkgs, both to modules and to packages. Most notably, I helped revitalize the JDK through culling old packages and doing a bump of all extant JDK versions, which has helped make OpenJDK more maintainable.
I am also the creator and maintainer of nix-minecraft, a project for packaging Minecraft server software which also includes a more advanced module for hosting multiple Minecraft servers.
For my personal projects, my NixOS configuration 'universe' has represented over 2200 commits and 3 years worth of my investment into building on and working with NixOS across all of my machines. I also use Nix and NixOS for all of my software projects, and have talked about and helped others with using Nix.
I attended NixCon NA 2024 in March, and it was a great experience meeting many people in the community.

#### What I'll do

Having been a part of the community for a whole now, though I am not as deeply entrenched into the chatrooms, it was very disheartening to see how the community imploded. I want to do my best to prevent further degredation and help the community heal through making the project approachable and easy to be a part of. This comes in 2 forms: Working directly with the community, through things like moderation, and working on improving infrastructure through clear policies for change and through technical solutions like the recently-implemented merge bot.

My desire for change draws on my experience with organizations that have a mix of flat and non-flat hierarchies that try to give large amounts of agency to individuals while also making sure that groups have a consensus on the direction where everything is going. In particular, drawing from being an officer in Purdue Hackers, which has a very flat hierarchy, and being a moderator for a large D&D West Marches server, which has a deeper hierarchy to split up responsibility while still having team-wide votes and feedback on decisions. Ideally, the SC will delegate as much responsibility as possible in order to make a flat project-focus hierarchy, akin to Purdue Hackers, while still having oversight as a 'mentor team' akin to the D&D server. 
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2396263926">link</a>)</summary>

There are ultimately 2 competing goals: Independence, and accessibility.

Having our own git forge would be very freeing. It would let us use whatever workflows we wish, and let us have a deeply integrated development ecosystem that works for us, as opposed to requiring us to bend over backwards to accommodate it. Lix is already working under this model, with their own Gerrit-centered review scheme, plus infrastructure centered around a central Lix SSO. Adding new infrastructure and giving people access to it can be relatively straight forward and completely community owned.

On the other hand, GitHub is the biggest git forge extant. Within a rounding error, pretty much every developer has a GitHub account. If you want to make an issue, you don't need to create a whole new account. You just open GitHub and make an issue. You're already logged in. And if you aren't, you soon will be for one project or another. It is inevitable. This is a problem to which I see [ForgeFed](https://forgefed.org/) as the eventual solution. It may not be quite as simple as being already logged in, but being able to log into any federated forge using an existing account would help greatly.

So long as we make it easily accessible via OAuth login and the like, a self-hosted forge would be accessible enough to me. The only remaining question would then be the amount of time and effort it would take to make that transition. The sheer volume of open issues and pull requests would make any transition difficult. 
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2396433801">link</a>)</summary>

Being an organizer of Purdue Hackers, I've seen a lot of how the club handles donations and sponsorships, and that has been the biggest thing that has informed my thoughts. There are times when we have accepted sponsorships from companies that I personally think are a bit icky, such as Cloudflare. In those situations, the amount of funding it provided the club outweighed my personal feelings about the company, and was ultimately harmless. However, there are other situations in which accepting a sponsorship from a company would be absolutely unacceptable to me, and in those situations I speak out about it.

The unfortunate problem is that those with the most money that is able to be thrown at organizations like Nix will have their hands in parts of the military/defense/intelligence sectors in various ways, albeit comparatively. A [comment on the mentioned PR](https://github.com/NixOS/foundation/pull/140#issuecomment-2088887130) brings up this point pretty succinctly. I don't personally deem Google/Amazon/Microsoft to be out of the running for funding Nix, but a policy that handles everything like that is difficult. So long as it excludes arms manufacture, and it avoids alienating the community like has happened in the past, then I think we're along the right track.

> Are you in favor of merging NixOS/foundation#140?

Yes.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2396691820">link</a>)</summary>

I think the law of "Good Enough" applies here. Flakes are a de-facto standard already, and them being marked as experimental causes additional friction. Flakes have many flaws, the posts pointed out by getchoo (["Flakes aren't real and cannot hurt you [...]"](https://jade.fyi/blog/flakes-arent-real/) in particular) are all good discussions about what those flaws are. But despite that, they are overall quite stable, and I've been using them as the foundation of my NixOS configuration for years now.

I think Lix has the best approach here: Both Flakes and non-Flakes are important and need to be maintained. Flakes needs to inherit some of the ease of usability that non-flakes has (A good recent example being the ["unflake" template](https://github.com/Infinidoge/universe/tree/master/templates/unflake) I recently added to my config, which makes a devshell using a `NIX_PATH` [pinned from my system flake](https://github.com/Infinidoge/universe/blob/6c66a87db9f3f30ec28a5af0bd11981f15bca31b/modules/global/nix.nix#L62-L65)), and non-flakes should be able to benefit from the purity, locked dependencies, and ease of management (mostly-ish) of flakes. [Flake schemas](https://github.com/NixOS/nix/pull/8892) to me feels like the next logical evolution, but that's a topic outside of the scope of stabilization. Flakes need room to evolve, and I think nyabinary's approach of having 'now' be "v0", and working on improving flakes be "v1" makes sense.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2396675025">link</a>)</summary>

I agree with what others have mentioned: I think copyleft and FLOSS is superior to any proprietary license, however user choice is held above all. If a user wants to use proprietary software, it should be allowed, and this is where I think GNU and Guix falls flat.

There are some situations in which I think FLOSS licenses aren't the best fit (such as highly personal content that is still open and visible, but shouldn't be copied), however those types of situations by-and-large don't apply to the Nix ecosystem.

Though not directly analogous because it is referring to website content and not code, the "notes on licensing" blurb of [my website](https://inx.moe) covers some of the different situations I consider important, and different (CC-specific) licenses I think fit those situations.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2396372400">link</a>)</summary>

No. Some nix-community projects should probably be moved under the NixOS org and come under formal governance that way, however I feel that nix-community should remain independent, in order to let it develop independently and faster than governance might be able to keep up with. That said, as nyabinary mentioned, they should still (ideally) uphold the goals and values of the Nix community, but enforcing this would trample too much of the independence it relies upon.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2396670203">link</a>)</summary>

I think cafkafk, Gabriella, and nyabinary all have good ideas that are worth implementing.

- Approval voting is simple, straight forward, and effective. A simpler voting method makes it easier to get more people to vote.
- Making the board and SC mutually exclusive would be a very simple change that would help prevent someone from holding too much power
- Creating avenues for the community to be directly involved in governance allows significant changes to be made without them being made from on-high, preventing a situation where the SC or similar makes a big change without the approval of the community.
- Transparency is a must, and public SC voting records and meeting minutes would need to be a part of that.

Those all covered the biggest flaws I saw while reading through it myself.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2396730082">link</a>)</summary>

A well staffed moderation team is the core of making sure people of all stripes feel safe, and as nyabinary mentioned, having transparency reports as part of this is critical. Creating channels through which the community as a whole can give feedback (such as surveys), and ways individual people can raise concerns (anonymous reporting being a key component I've seen work for the biggest community I moderate for), are also necessary for a safe and functioning system.

Ensuring the inclusion and voice of minorities is less straight forward, and at the moment I don't have a very comprehensive thought process on how it should be implemented. mschwaig's mention of [*The Tyranny of Structurelessness*](https://www.jofreeman.com/joreen/tyranny.htm) (link as posted by Jo Freeman) is well-placed, though, and well worth a read for those who haven't read it yet.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2396366171">link</a>)</summary>

Absolutely. In [my configuration](https://github.com/Infinidoge/universe), all of my machines (except for ones i haven't actively used in a long time) are [impermanent](https://github.com/nix-community/impermanence) with a tmpfs root, and everything I configure is actively done through Nix and nothing else. The more I can declare as part of my configuration, the better.  I agree with proofconstruction that something I want to see is better handling of database state. Working with Postgres is easily one of my biggest points of anxiety about my current server setup.

Additionally, one of my biggest recent sticking points has been the move to relying on systemd state directories for generating the long-term storage of where state should be. I want to be able to declare that location myself, and having to [vendor several modules](https://github.com/Infinidoge/universe/blob/master/modules/vendored) to accomplish that is frustrating. But that is a matter better suited for elsewhere.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2396173860">link</a>)</summary>

I think that analytics can be useful, however I don't think that it would fit the Nix ecosystem very well. Anything that is privacy-respecting must be opt-in, but the very nature of being opt-in makes it less representative as it removes those who aren't dedicated enough to turn it on and  who don't wish to contribute from the dataset. With something as complex as Nix, with the kind of userbase that Nix has, I don't think we would get as useful data out of it. Personally, I think that we could get similar mileage out of community-wide surveys akin to the StackOverflow developer survey and the Python Developers Survey (run by JetBrains). From that, I don't think we should add analytics, but i would not be staunchly against it so long as it is privacy-respecting.

Crash reporting, as implemented by Firefox, Thunderbird, and others, feels unhelpful to me as it seems to gather a large amount of data without very helpful details about it. With that said, I think a feature that could be useful to add would be tools for easily creating GitHub issues when Nix crashes. I'm not sure how it would be implemented (ask every time with a permanent opt-out, opt-in to ask every time, ask on install), but a good template filled in by collected data could make the process easier.

My greatest comparison for a situation where implementing analytics went very wrong with the community was when [Quilt Loader added a Monthly Active Users beacon](https://quiltmc.org/en/blog/2023-07-12-quilt-telemetry-explained/), which was later removed following community concerns.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2396313460">link</a>)</summary>

I think it would be great to make the core of Nix independent of a lot of the Nix-centered supporting components. A big dream of mine is to work on making a more user-friendly language for the Nix package manager that makes it easier to make bigger projects without running into the many, many paper cuts and razor blades littering the ecosystem. A language-independent core would make this a much more feasible pursuit. A componentized Nix would, ideally, make it possible to mix different languages (and perhaps even package managers) around a central shared core, which I think would be fantastic.

However, I don't think that a priority should be made with regards to Guix specifically. Guix and GNU as a whole have a lot of stipulations and baggage that can make it harder to collaborate, so I don't see it as a worthwhile priority to focus on them specifically.
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2396333276">link</a>)</summary>

Grafts are a useful tool that I think Nix could definitely use. (Mass rebuilds for a quick security fix is... suboptimal when it needs to be deployed quickly.) Whether a system exactly like grafts should be implemented, or whether it should be something more suited to Nix that is inspired by grafts, I can't say. But a system for small patches without rebuilding the entire tree is needed. Even if it can be technically incorrect package-wise, it will reach eventual consistency. (Plus users can opt-out and mass rebuild to their heart's content.)
</details>

### What are your thoughts on cross-compilation? ([link](https://github.com/NixOS/SC-election-2024/issues/121))


What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/121#issuecomment-2396187897">link</a>)</summary>

Cross-compilation is one of the bigger strengths of Nix, in my eyes, and one of my favorite examples of Nix that I show others is [how easy it is to get a cross compiler](https://github.com/Infinidoge/xenia-i386/blob/a9d211a130272a00ff81345f388f02774c7a25ac/flake.nix#L29-L34). Nix is fundamentally well suited for doing cross compilation, so I think it is an important thing to keep maintained. Every new package shouldn't be required to cross compile to every system, but packages that already cross-compile should be maintained on all of the platforms they already function on.

If a big change to Nixpkgs breaks cross compilation, then perhaps the big change needs to be rethought. (Though I will grant that how cross compilation is done currently, through splicing (see list bellow), is a well-known and well-hated abomination.)

- https://discourse.nixos.org/t/frustrations-about-splicing/49607
- https://github.com/NixOS/nixpkgs/issues/204303
- https://github.com/NixOS/nixpkgs/issues/68967#issuecomment-532432617
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2396283393">link</a>)</summary>

Nix (and Guix by extension) are uniquely suited for a source bootstrap, as we can get both the benefits of a source bootstrap and the benefits of downloading compiled binaries. It's very cool work and I think we should support those who are working on it. However, I don't think it should take precedence over many of the existing problems with the Nix ecosystem, which could be made more complicated by trying to instill a complex full-bootstrap process.
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2396668232">link</a>)</summary>

I agree with proofconstruction in that we need a dedicated team focusing on UX, with improving and potentially making official home-manager, as it is a core project driving Nix adoption. Outside of surveys, I think one of the best ways to try and improve the UX situation would be to look at all of the different projects that wrap Nix/NixOS commands, and see if there are commonalities in how they handle making their own UX improvements. I personally wrote [my own shortcut CLI](https://github.com/Infinidoge/universe-cli/), and the biggest commonality I've noticed while looking at the work of others is the volume of `nixos-rebuild` implementations. As such, it seems to me that NixOS Rebuild is one of the biggest sticking points.
</details>

### What is your opinion on garbage collecting the cache ([link](https://github.com/NixOS/SC-election-2024/issues/96))


The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/96#issuecomment-2396640340">link</a>)</summary>

My first and foremost concern about garbage collecting the cache is the possibility of deleting data that is otherwise inaccessible online, whether through services shutting down or authors deleting their work. Base sources should be kept, and everything else should be able to be reproduced from derivations in Nixpkgs from commits across time. Anything that is infrequently accessed but kept in this manner should be archived to cheap and slower storage. I also agree with the others who mentioned maintaining a separation between the cache facing users and the cache presented by CI. Packages from long-dead PRs don't need to be kept cached forever, and should be more aggressively trimmed, especially with the high turnover that those packages might see as they get refined before merging.
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
<summary>Opinions about scaling down nixpkgs (<a href="https://github.com/NixOS/SC-election-2024/issues/98">link</a>)</summary>

Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?
</details>
<details>
<summary>What is your vision for the future technical direction of Nix? (<a href="https://github.com/NixOS/SC-election-2024/issues/50">link</a>)</summary>

What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?
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
<summary>What is your plan on improving the darwin PR situtation? (<a href="https://github.com/NixOS/SC-election-2024/issues/97">link</a>)</summary>

Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?
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
