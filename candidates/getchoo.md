- Name: Seth
- GitHub handle: getchoo
- Email address: getchoo at tuta dot io
- Discourse handle (optional): getchoo
- Matrix handle (optional): @getchoo:matrix.org

### Conflict of interest disclosure

I am not employed by, nor paid by any organization or individual involved or related to Nix; in fact, I do not even work in the tech industry. I am only a user and contributor.

### Motivation to be on the Steering Committee

Since first joining the Nix community in late 2022 thanks to some friends of mine (hi Replay and melvyn2!), I have had some of the best experiences in my FOSS career. The amount of passion, creativity, and friendliness I've seen has inspired me to get more involved almost every day; and that has played no small part in me finally feeling at home with NixOS as my Linux distribution of choice.

I believe that being a member of the SC would give me a unique opportunity to continue to give back to this community that has done so much for me, while also helping to ensure new users and contributors can have the same great experience that made me fall in love with Nix.

#### What I have done

In the last ~1.5 years I have been contributing to Nixpkgs, I have (as of 2024-09-27):

- [Landed 135 pull requests](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Agetchoo+is%3Amerged+)
- [Authored 327 commits](https://github.com/NixOS/nixpkgs/commits/master/?author=getchoo)
- [Reviewed 468 pull requests](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+reviewed-by%3Agetchoo)
- [Became a maintainer of ~73 packages](https://search.nixos.org/packages?channel=unstable&from=0&size=50&buckets=%7B%22package_attr_set%22%3A%5B%5D%2C%22package_license_set%22%3A%5B%5D%2C%22package_maintainers_set%22%3A%5B%22Seth%22%5D%2C%22package_platforms%22%3A%5B%5D%7D&sort=relevance&type=packages&query=+)
- [Added 21 new packages](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Agetchoo+is%3Amerged+init) such as `cartridges`, `modrinth-app`, `av1an`, `garnet`, and `gitbutler`
- [Adopted ~21 orphaned packages](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Agetchoo+is%3Amerged+label%3A%220.kind%3A+package+adoption%22+) including `flatpak`, `gunicorn`, `maturin`, `easyeffects`, and `libopus`
- Joined the [Budgie](https://github.com/NixOS/nixpkgs/blob/51648b2f0bac131d0447a1366e0a6cdafea2b8bf/maintainers/team-list.nix#L100) team
- Volunteered as one of the Release Editors for the fast approaching 24.11
- Created [a](https://github.com/getchoo/nixos-musl-flake) [couple](https://github.com/getchoo/ziggy-with-it) examples of more niche applications of Nix, as well as [some](https://github.com/getchoo/update-npins) [tools](https://github.com/getchoo/procfile-nix) meant for wider, real world use 

I have also assisted with:

- [The introduction of our `pnpm` tooling](https://github.com/NixOS/nixpkgs/pull/290715)
- Improving the [defaults](https://github.com/NixOS/nixpkgs/pull/326369) and [UX](https://github.com/NixOS/nixpkgs/pull/339025) of the NVIDIA NixOS module
- Adding support in [packages](https://github.com/NixOS/nixpkgs/pull/337620) [for](https://github.com/NixOS/nixpkgs/pull/313797) [more](https://github.com/NixOS/nixpkgs/pull/328569) [platforms](https://github.com/NixOS/nixpkgs/pull/246898)
- "Modernizing" a [good few packages](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+is%3Amerged+author%3Agetchoo+refactor)
- The creation and maintenance of Catppuccin's [Nix port](https://nix.catppuccin.com)

And some cool things I am in the progress of working on include:

- [`aarch64-windows` support in Nixpkgs](https://github.com/NixOS/nixpkgs/pull/335067)
- [Hooks for easily building Tauri packages](https://github.com/NixOS/nixpkgs/pull/335751)

#### What I'll do

As I said before, a big part in my motivation for joining the SC is to help give others the same experience I had when first entering the community. To ensure this can happen, I will primarily focus on strong moderation and de-escalation across official communication channels, expanding and supporting learning resources and onboarding tools under the Foundation, and keeping our policies, procedures, ***and actions*** in line with the community.

To be more specific on these points:

- Currently our moderation team consists of only 6 members, which is quite small for such a rapidly growing community . I am interested in expanding this team and supporting the ongoing efforts in https://github.com/NixOS/moderation to document their processes and increase transparency within our community. Additionally, I would like to see elections for these moderation roles to ensure that it accurately represents our community -- similar to the current system for the SC itself

- A heavy focus should be put on supporting official, user-facing documentation resources such as nix.dev, wiki.nixos.org, and internal contribution guides. I believe these are cornerstones for the future growth and success of our community, and have already shown great potential in both onboarding new users and being useful to veterans alike. We must continue this effort by encouraging (and assisting) contributors to readily document new additions (both for users as developers), general coding style/standards, and "best practices" in nixpkgs/NixOS. To do this, I propose creating small, focused teams for each documentation source (manuals, nix.dev, wiki.nixos.org, etc) that can collaborate under a wider committee to share and adapt information as they see fit

- Per the Governance Constitution, the SC must "Ensure the existence and functionality of processes for regular decision-making within the community." Given many recent events, I find this is one of (if not *the*) most important clause. Regular community members should be encouraged to voice their opinions in RFCs, surveys, elections, etc. in decisions being made by small teams, large teams, and of course the SC itself. To ensure this happens, I believe we need to clearly outline decision making processes at different levels of governance, introduce regular community "check-ins" where members present items currently under consideration for public comment (similar to meeting minutes), and enable teams to reach out to higher level of governance for support and guidance in fostering a better relationship with the community

## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2381934483">link</a>)</summary>

No.

However, we should have plans in place in the event of GitHub no longer being a sustainable or fitting home for our project -- or if support grows for a transition in the majority of the community
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2381930751">link</a>)</summary>

> What is your stance on sponsorships within the Nix community

Similar to most FOSS projects of this size, I find sponsorships to be a necessity and openly welcome them. They do a lot in helping the community, who will then go back to benefit the group who financed the sponsorship. This is a symbiotic relationship, and without it I don't think anyone would win

>  How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values?

Immediately, these sponsorships should fall in line with [our stated community values](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md), *especially* "People come first". If the organization seeking to sponsor the project does not meet these, we should not accept it. Likewise (as our community is always evolving), if there are major objections to a specific sponsor from our community, those *must* be taken into account; if a decision cannot be reached by the SC (or another group responsible for handling sponsors), a community vote would be the only fitting option IMO


>Are you in favor of merging this pr?(yes or no answers only for this specific question, please).

No (feel free to reach out via email or on matrix at getchoo:matrix.org for an expanded answer)
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2395248938">link</a>)</summary>

I was a bit on the fence about this at first, but as I continued writing my response...I kinda changed my mind. I do not believe Flakes should be stabilized yet.[^*]

For reference, I moved to Flakes pretty quickly after I started using NixOS in ~2 months. I vastly preferred it over the stable CLI, using basic fetchers for dependencies, and most of all I enjoyed the organization it gave Nix projects by introducing (mostly) standard outputs for consumption. But as I went further down the rabbit hole over the years, I came to better understand some of the flaws of the current implementation and the *very* large room for improvement.

Some of my favorite sources for describing these are @lf-'s amazingly titled blogpost, ["Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way"](https://jade.fyi/blog/flakes-arent-real/), @lheckemann's talk at last year's NixCon, ["What Flakes needs (technically)"](https://www.youtube.com/watch?v=UHhnG4rbvzo), and @samueldr's blogpost, ["Nix Flakes is an experiment that did too much at once…"](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html). And while I may not agree with every single point brought up in these, I highly recommend anyone reading this to go give them a read/listen/watch; they're great!

In any case, some points from the above sources I feel strongest about are:

- Lack of configurability
  - Some workarounds for this exist...but they are messy to say the least. See [nix-systems](https://github.com/nix-systems)
- The Flake registry
  - While useful, this introduces an impurity in running CLI commands and (non-locked) Flakes
  - `nix flake update` for example may result in Nix resolving completely different upstream sources depending on the system's state
  - `nix run nixpkgs#<package>` will have a different result depending on when and where you run it
  - Lix developers now [vendor](https://git.lix.systems/lix-project/lix/commit/7a3745b07607d3fc85fb5a0a08832ab078080884) the online flake registry. This is a good way to solve this problem now, but I'd like to see this functionality completely deprecated in regards to declared Flake inputs; this would be much better if it were CLI only
  - lheckemann proposed a [`--pure` flag](https://www.youtube.com/watch?v=UHhnG4rbvzo&t=628s) that would enforce explicit references in CLI commands, which would in turn allow for backwards compatibility in current commands, but also ensure the reproducibility of those using `--pure`
- Filesystem shenanigans
  - Copying all of a Flake's source tree into the store creates a *massive* issue for projects at a scale, to the point where Flakes may not be feasible for them at all
  - We also have [massive footguns](https://www.github.com/NixOS/nix/issues/9428)
  - Lazy trees fix most of these issues, but still aren't quite ready yet. I believe this is one of biggest blockers to widescale Flake adoption and thus stabilization

Some of these may be done without introducing backwards incompatibilities, while others not so much. I think this is the power of the current "experimental" flag, though -- even if it we haven't used it as much as we could. We still have room to make these changes and not push out a feature still containing a number of core issues with the promise of it being "production ready".

***However***, I am very well aware of how many users depend on Flakes in production environments already -- including myself in probably 99% of personal and collaborative projects. That's why I strongly believe breaking changes must be made thoughtfully and only where necessary, but still encouraged in order to reach an actually stable state. As lheckemann said in his talk, we must avoid changing widespread patterns that would break evaluation of Flakes (unless they fix ambiguities (see the point on registries above)) and "the errors that get thrown should come with clear explanations of what was broken, why, and how to make things work again."

Lastly, any effort to stabilize Flakes should heavily involve the Nix team. Quoting samueldr from the above [blogpost](https://samuel.dionne-riel.com/blog/2023/09/06/flakes-is-an-experiment-that-did-too-much-at-once.html):

> It is important to let the Nix maintainers team decide on how to handle this situation, as they themselves will handle maintaining it. Deciding to mark them "stable" today is pushing a large load on their back.

[^*]: But I would like to see it done sooner than later. Enabling them by default (similar to the Determinate Systems installer) is also something I would want to explore, and giving them something at least close to the amount of documentation for stable Nix on resources like nix.dev should be a priority given their widespread use 
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2387364380">link</a>)</summary>

> Do you support the development and integration of a native home management system

Given the popularity of home-manager, I believe the community definitely has a large interest in Nix for this purpose. Bringing it or something similar in as an official project would only make sense IMO

> into Nix (similar to Guix Home)?

Integrating this into Nix the package manager may be a bit of a misstep, though. I would like to see this be closer to the implementation of `nixos-rebuild`, which by being in the nixpkgs monorepo ensures that there are no need to sync changes between the `nix` implementation of the tool and the modules, packages, etc in nixpkgs. Further, keeping it in nixpkgs would allow for easier reuse of our existing infrastructure, the introduction of abstractions between them as mentioned above, and faster iteration since we wouldn't be locked to `nix`'s release cycle. `nix` would be best use as a plumbing tool for these systems, as it [already](https://github.com/NixOS/nixpkgs/blob/8b832758af5773048aae830eb55cb11bb572266c/pkgs/os-specific/linux/nixos-rebuild/nixos-rebuild.sh#L772) [is](https://github.com/nix-community/home-manager/blob/ffe2d07e771580a005e675108212597e5b367d2d/modules/home-environment.nix#L604-L640) with `nix-env`/`nix profile`

> If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use?

Right off the bat, having this officially included would be a great leap in UX and ease of use. As I've heard from many first starting out with Nix, home-manager is a bit of an odd concept and intimidating with it being a completely separate community project that has its own setup; making an official tool that can be easily be bootstrapped with only nixpkgs alone would fix much of this issue. It would also introduce many opportunities for documentation on other official resources such as nix.dev

Regarding configurability and security, the greater attention nixpkgs has from the wider contributor base would allow for faster reviews with improved quality -- which in turn commonly leads to more and better thought out options -- as well as rapid responses from our dedicated [Security Team](https://nixos.org/community/teams/security/)

> What challenges do you foresee in implementing such a system, and how would you address them?

Easily the biggest aspect would be the maintenance burden. In order for something like this to work and not result in a *lot* of reimplemented concepts, we need abstracts for sharing options between modules and managing the profiles that they declare. Nothing like this really exists currently though (to my knowledge), so it's probably something for a dedicated RFC and improvements to the modules system in general
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2381982860">link</a>)</summary>

> How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos?

FLOSS has always been the most interesting part of the technology industry for me. I don't know of many other places where you can find a community of people who are so passionate about working to make people's lives better, all while only asking for the same in return. It's a view of the world I've always appreciated and wish it was more reflected elsewhere, and I am proud to say I have played some part in spreading it

To get more personal, this concept is what gave me a start in software development and systems administration (even if it's just currently in my free time :p). The amazing experiences I've had with people who share this belief and their creations inspired me to start learning how to give back to those same projects I have benefited so much from, and help others have the same, welcoming feeling I had when I started; without FLOSS, I think I would be in a very different place today. I *overwhelmingly* support the continuation and growth of FLOSS, and regularly encourage people to use it as a way to make the world just *slightly* better, in any way they can

> What are the key principles of these movements in your view

The most important part of FLOSS and copyleft for me can be summed up with Marx's slogan of ["From each according to his ability, to each according to his needs"](https://en.wikipedia.org/wiki/From_each_according_to_his_ability,_to_each_according_to_his_needs). With the commodification of software and accessibility of developer tools, distribution, etc. there is little point in creating proprietary, locked down environments solely to monetize the user rather than give them something that is actually useful. As I said before, we should be using our abilities as developers to help create a better world for people, even in small ways. Likewise, those that wish to use the tools we create should be encouraged to give back to the best of their ability

> how would you advocate for them in your role within the Nix community?

I would like to encourage every day users to take more active roles in the project, be it documentation, packaging, bug reports, testing, etc. I've also always been interested in creating a mentoring program for new contributors -- though that has remained a one-on-one thing I do with friends and acquaintances for now
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2381947082">link</a>)</summary>

Unless there is a clear and concise path for doing this long-term (i.e., funding, partnership, etc), no. The community and Foundation have already had [issues](https://discourse.nixos.org/t/the-nixos-foundations-call-to-action-s3-costs-require-community-support/28672) in maintaining the binary cache *with* outside support. Moving this completely in-house would most likely exaggerate this issue without a partner, and would definitely affect people in areas not in the immediate proximity of the bare metal hardware if we were to drop Fastly as well

As mentioned by others here, some [nice work](https://github.com/nix-community/trustix) has also gone towards making a P2P binary cache viable, which could very well take the burden off the Foundation/NixOS org and help with the CDN issue. I find this to be more of something to consider in the (somewhat) far future though, as currently they are not production ready and haven't been tested at the scale of our current binary cache
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2381901842">link</a>)</summary>

No. I find the strongest part of nix-community to be that it is a *community* project first and foremost, with only *support* from the Foundation and official NixOS organization, not direct oversight. I believe this helps keep the very important spirit of innovation that can sometimes be stifled by too much bureaucracy, and gives the community a place where they can freely explore possibilities we can (hopefully) adopt -- all without the fear of breaking things or pressure from decisions made before some have even joined the project
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2395135200">link</a>)</summary>

In general, no. I would be much more in favor of [automating](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#automation-over-process-and-toil1) and streamlining the maintenance of these things (like through `passthru.updateScript`, `nixosTests`, and freeform modules)

I wouldn't be against a cleanup of some parts of Nixpkgs, though. Removing unmaintained (whether by us or upstream) leaf packages would assist in reducing long term "tech debt", as well as help us save on resources with things like Hydra and the binary cache -- https://www.github.com/NixOS/nixpkgs/issues/346385 is something recent that comes to mind which follows this idea
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2387240461">link</a>)</summary>

I would like to see an increase in documentation, [automation](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#automation-over-process-and-toil1), and encouraging purity in Nix projects

**For documentation**:  We should continue supporting and growing official, user-facing documentation resources such as nix.dev and wiki.nixos.org, as well as internal contribution guides for developers in nixpkgs. These are cornerstones for the future growth and success of our community, and have already shown great potential in both onboarding new users and being useful to veterans alike. A good start here would be creating individual teams dedicated to these resources, that can then fall under a wider Documentation Team/Committee to organize and share things between them. Contributors should also be encouraged and assisted in regularly documenting new additions, even if it only serves as groundwork for the documentation teams to expand upon in the future

**For automation**: Contributors should first be encouraged to leverage our [testing](https://nixos.org/manual/nixpkgs/stable/#chap-testers) infrastructure using basic "smoke tests" such as `testers.testVersion` and `testers.hasPkgConfigModules`, all the way to full NixOS VM tests. This in turn will be useful in reducing the [toil](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#user-content-fn-1-92e60fe531a5e612b4eb43684a0fae63) of package updates -- which should also be automated in more packages via `passthru.updateScript`. Finally, I would encourage the use and improvement of tools like https://github.com/nixos/nixpkgs-merge-bot that assist package maintainers in quickly landing changes, while not compromising the stability of nixpkgs

**For purity**: This overlaps with documentation a bit, but we should continue to push the avoidance of [impurities](https://nix.dev/tutorials/nix-language.html#impurities) in Nix -- specifically [builtin fetchers](https://nix.dev/tutorials/nix-language.html#fetchers), [`<...>` search paths](https://nix.dev/guides/best-practices#search-path), and [impure configuration of nixpkgs](https://nix.dev/guides/best-practices#reproducible-nixpkgs-configuration). These impurities can easily lead to losing one of the biggest advantages of Nix in reproducibility, and introduce the "works on my machine" issues we have worked so hard to avoid. Tools such as flakes and [npins](https://github.com/andir/npins) have done a lot in making this easier, and we should ensure they are the primary ways users want to create and consume Nix expressions
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2387003547">link</a>)</summary>

Similar to cafkafk above, I am interested in ensuring membership of the Foundation Board and Steering Committee is mutually exclusive. Aside from that, I can't say I have many objections or suggestions. I am very satisfied with how our first Constitution turned out, and I believe it has given the community a solid foundation for amending it in the future
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2381993226">link</a>)</summary>

> What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage?

I think the status quo is in a decent spot, but could see some improvement. We should encourage and allow unofficial communities, but do some vetting in what exactly we link

> should they be compelled to comply with the Foundation's code of conduct?

I'm not sure if "compelled" is the word for what I believe. To be linked on nixos.org, they should *generally* fall in line with the CoC and [our stated values](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md) -- specifically in basic respect and civility encouraged throughout the community, as well as putting people first. For those that don't, I'm not sure if it would be effective or worth our time to try and force it; the best thing to do in those cases IMO would be to not link to them

>  Should we attempt to convert these communities into official spaces (if so, at what point)?

We should leave the door open if these communities wish to become official spaces, and ensure they meet the standards of our community before accepting them. Attempting to proactively convert them may be more of a disservice to those communities than anything, and create a lot of (pointless) conflict with those who don't share our values
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2381891774">link</a>)</summary>

I believe a great first step here would be in growing our moderation team. Currently we are at [6 members](https://nixos.org/community/teams/moderation/) -- which given the pretty rapid growth of our community (for reference, 2023's community survey [reported](https://discourse.nixos.org/t/nix-community-survey-2023-results/33124#nix-at-work-5) that 38% of respondents had only been using Nix for less than a year, and I would only imagine this number will grow with the number of respondents [increasing by more than 30%](https://discourse.nixos.org/t/nix-community-survey-2024/49446/24) this year) -- may not be suitable even in the near future. Putting more resources into this team would allow for faster responses and more attention towards those that are most vulnerable in our community, onboarding new moderators in the long term by better documenting the decision making process and giving some time to mentor them, and continuing the work in https://github.com/nixos/moderation to increase transparency with the entire community. To go a step further, I also want to see these new moderators elected by the community (similar to the SC) to ensure they accurately reflect the composition of our userbase

Another important part is in how we delegate responsibilities. As mentioned by tomberek above, this is already one of our jobs in the SC, and I believe it is the most important. By compartmentalizing decision making abilities over parts of our project into the hands of smaller teams, we can ensure that no one group has an overwhelming and overpowering voice, while also giving the chance for minority groups to still have a say and grow in both their individual teams and the project at large

Lastly, I would like to take some inspiration from other projects in both celebrating, spreading awareness of and directly supporting our community's diversity. Fedora for [example](https://docs.fedoraproject.org/en-US/dei/) has implemented programs that help bring together minorities inside of their own community, ensure they have the resources to do so, and showcase that diversity to the wider FOSS community. I believe this plays a key part in avoiding the "boy's locker room" phenomenon that is all too common in technology circles today, and has been shown time and time again to be a major uphill battle for women, people of color, and queer people in getting involved in these kinds of spaces
</details>

### What is your plan on improving the darwin PR situtation? ([link](https://github.com/NixOS/SC-election-2024/issues/97))


Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/97#issuecomment-2387538029">link</a>)</summary>

> What are your ideas for that?

As someone with a [little bit](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+is%3Amerged+author%3Agetchoo+%22darwin+support%22) of experience in adding Darwin support to packages, the biggest blocker for me is the hardware. All of the PRs linked above were only possible to test on my end through a 2017 MacBook Air with a 1.8GHz, dual-core i5 I was given from a relative. It's as fun as you can probably imagine 😆 

So one of my priorities here would be in providing access to Darwin hardware to contributors. The quickest way to do this would of course be Ofborg -- which we should still fund more Darwin machines for -- but given the massive demand it has, I would also want to give more resources to nix-community's [Community builder program](https://nix-community.org/community-builder/) so people would have the opportunity to directly (and quickly) test changes. This would hopefully help ease the reliance on friends who are gracious enough to test PRs that I and other contributors have surely experienced

Further, I would encourage more [community calls](https://www.github.com/NixOS/nixpkgs/issues/145230) for maintainers *and* testers for Darwin (possibly under a NixOS/darwin-testers team?). The former has already shown to be quite effective, and I believe the latter would assist even further in the issue of contributors not being able to test and debug things properly as I mentioned above

> Should darwin be demoted to tier 3?

No

> Should we try to find sponsors for new hardware?

Most definitely. As interest grows in Nix, I believe there are many companies and organizations who would be interested in both using and growing our support for the platform in nixpkgs
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2381897068">link</a>)</summary>

> Do you believe that one of the core principles of NixOS is its declarative approach?

100%. I've always found this to be the most appealing part of NixOS, and it supports the functional deployment approach Nix has taken [from the beginning](https://edolstra.github.io/pubs/phd-thesis.pdf)

> If so, should NixOS strive to further minimize state and enhance its declarativity in the future?

Again, yes. Improving what is one of the project's most unique and powerful aspects will do nothing but good IMO.

This is not to say NixOS should *only* focus on this, though. I wouldn't want it to put some of NixOS' imperative possibilities (that have been quite important for users just starting out) on the backburner
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2395296194">link</a>)</summary>

> Do you think this could be beneficial?

Yes

> If so, what data could you imagine being helpful to the project?

Broad usage statistics for experimental features, crashes resulting from nondeterministic/difficult to reproduce bugs, and channel/branch usage in Nixpkgs are the first that come to mind. I think these would help us make better development decisions in regards to things like experimental feature stabilization, additions, removals, etc., as well as assist in UX issues (as described in #109) and help get rid of some of the more niche Nix bugs as they happen

> Do you think it could be implemented in a way that is broadly supported in the community?

I appreciate the use of the word "*broadly*" here, as if it was "all of the community" I would have to say no; but yes, I think we definitely could. It would take a good amount of communication and transparency, there would be many debates over opt-in/opt-out, but in the end I think there is a good middleground for a vast majority of users, as well as developers. 
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2389720146">link</a>)</summary>

TL;DR: I have a similar stance on this as I did in the question mentioned above and https://github.com/NixOS/SC-election-2024/issues/34. See my [previous](https://www.github.com/NixOS/SC-election-2024/issues/34#issuecomment-2381993226) [responses](https://www.github.com/NixOS/SC-election-2024/issues/89#issuecomment-2387502336) in both for some context

> How do you plan on making community projects official?

I don't think there should be set plans for making these projects official. Having projects fully owned by the community is very valuable, and I believe has resulted in great work being done in an environment with a lot less pressure put on contributors. It allows more risks to be taken, new ideas to be explored, and isn't limited by opinions held by the primary governance of the official organization. We should only be leaving the door open for projects that would like to graduate to an "official" status

> What procedure would you implement to make community projects official?

I believe community projects must

- Align with our [stated values](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md)
  - Specifically in [not introducing too high of a maintenance burden](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#automation-over-process-and-toil1) and having a [commitment to stability](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#stable-evolution-over-stagnation-or-chaos) 
- Explicitly follow our [consitution](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/constitution.md)
- Bring a clear benefit to the wider community
- Have approval from most stakeholders in the implementation (be it the SC itself, teams we delegate responsibilities to, and/or regular users)


> What benefits would those projects get once they are?

The biggest would probably be the attention that results from being considered "official". This (usually) results in more PRs, reviewers, bug reports from users, and improved moderation. They may also be able to leverage other resources in the Foundation such as Hydra and our Security Team, which can be extremely important for mission critical projects
</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2387502336">link</a>)</summary>

> Do you view this fragmentation as a significant issue for the project?

Sometimes, yes. Other times, no

Since I first picked up Linux and got involved in the FOSS space in 2018, I've found fragmentation to be an inevitability. This can often be a good thing, as no one project knows what is best for everyone and it can push both the original team and those that split to innovate and improve their respective projects (like in the cases of OpenBSD/NetBSD, LibreSSL/OpenSSL, and Blink/WebKit). In other cases however, I find that it is a sign of failure from the original project, be it something technical such as maintenance, or in regards to the community with a lack of transparency, communication, representation, and/or shared values (some examples here include XOrg/XFree86, Jenkins/Hudson, and Nextcloud/ownCloud)

> If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

In the case of the former, I would actually *encourage* fragmentation. Choice is paramount to FOSS and included in [one of](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#free-software-and-choice-over-lock-in) our shared values. Users should be able to have options in what tools they use, and as long as other projects genuinely provide features and experiences that are much better for them (even if the community here may not agree) I don't think it hurts our community. It is a net benefit

In the case of the latter, I believe the obvious answer is to confront those failures head on. Projects should *never* be pushing people away en masse for things that can be (relative to fundamental technical differences) easy to solve by listening and ***taking action*** on feedback. I think this is being well implemented in our community now through the NCA and this election, and I hope it continues with the elected Committee. No one should feel unwelcome or not accepted in our shared spaces -- ***especially*** [those of us who are most vulnerable](https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2381891774) -- and ensuring they are heard and know that their opinions are valid is the first step to that. If done right, I would like to imagine a situation similar to [Node.js and io.js merging](https://nodejs.org/en/blog/announcements/foundation-v4-announce) could end this fragmentation, so that we may continue working together in a community where all feel safe and respected
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2387461588">link</a>)</summary>

Similar to many of the other responses here, I think the best solution in the long term for new PRs is automation. As a maintainer of ~70 packages, [nixpkgs-merge-bot](https://github.com/NixOS/nixpkgs-merge-bot) has been a *godsend* in getting updates for my packages into nixpkgs and I would love to see more work on this specifically to remove some of its limitations (like https://www,github.com/NixOS/nixpkgs-merge-bot/issues/95). As a [somewhat frequent reviewer](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+is%3Aopen+reviewed-by%3Agetchoo), I have greatly appreciated the work done to take some of the weight off my shoulders, such as https://github.com/NixOS/nixpkgs-vet, the [introduction](https://www.github.com/NixOS/nixpkgs/pull/330066) of `nixf-tidy` into CI, and [QoL additions](https://www.github.com/NixOS/nixpkgs/pull/279892) that save me some time waiting on Ofborg. Reiterating a [previous answer](https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2387240461) of mine, I think it's important to encourage and assist contributors in taking advantage of our testing infrastructure and `passthru.updateScript` in order for all of these tools to be much more effective and avoid some of the errors that may come from automation as best as possible

Giving more power to non-committers is also a concept we should really continue with. One example I've seen recently that I believe has a lot of promise is [allowing for people without push access to be CODEOWNERS](https://github.com/NixOS/nixpkgs/pull/336261), which would hopefully allow for faster (manual) reviews by ensuring those responsible for certain files are *always* pinged regardless of committer status

Lastly, introducing more teams for more specific categories of nixpkgs would hopefully drive more attention to said categories from a group of people that have the time for and are passionate about them. As said by tomberek above, this has already developed naturally in some form, but should be expanded and made much more explicit. I also believe in the creation of a team dedicated to being a point of escalation for stalled PRs across the repository in the event of the aforementioned methods failing
</details>

### What are your thoughts on cross-compilation? ([link](https://github.com/NixOS/SC-election-2024/issues/121))


What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/121#issuecomment-2395293736">link</a>)</summary>

> What are your thoughts on cross-compilation support in nixpkgs?

I think it's one of the most underrated and amazing features of Nixpkgs. I was first introduced to it in Matthew Croughan's [talk](https://www.youtube.com/watch?v=0uixRE8xlbY) at May Contain Hackers 2022, where I was immediately surprised how it "just works" for most packages. It's an experience that's only close to being matched by [Dockerfiles that can get *very* overcomplicated](https://www.docker.com/blog/faster-multi-platform-builds-dockerfile-cross-compilation-guide/) and require a lot of manual intervention in comparison. I really believe it should be a focus of Nixpkgs going to into the future, solely due to this massive potential

> In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

I would agree with cafkafk though and say we shouldn't force this effort onto maintainers who either don't have the resources to keep things building or don't want to. This would be an undue burden, and we'd most likely end up back at square one where the package can no longer build in some cross environments. The only real exceptions to this should be in toolchains that entire cross targets depend on (i.e., LLVM, GCC), as without those building, the purpose of having the target is a bit moot.

In general, I would also want to encourage and mentor new contributors and maintainers in working on cross support for at least tier 1 platforms. It would be on a case by case basis, but I believe a majority of packages out there could have this support relatively easily -- and with better documentation and help from others, the average package maintainer could keep things building
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2395290711">link</a>)</summary>

> What's your stance towards reducing dependencies from binary sources

I think this is something very important not just for security, but also improving Nixpkgs' platform support. By avoiding binaries from upstream sources (that usually only build for x86_64-linux, and *maybe* aarch64-linux if you're lucky), we can open the door for distributing packages for many more common and exotic architectures. There is tangible action here we can take here too, as many packages that are FOSS but currently extract and patch an AppImage/.deb could most likely be built from source -- their build process is just very complicated. This can be eased heavily by introducing new tools and hooks for package maintainers, such as `pnpm.configHook` and `cargo-tauri.hook`

>  improving the bootstrappability of more packages with minimal binary downloads?

As said above by mschwaig, taking inspiration from the Guix bootstrap and t184256's talk is definitely something to explore. It would require a good amount of work, but they would be a great improvement over our current boostrap process. We should also target more native bootstraps IMO
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2395266041">link</a>)</summary>

> What are your thoughts on content addressed derivations?

I think they are a really interesting path for Nix to go down. The idea of a content addressed store has seen a lot of success in systems such as OSTree and of course Git, and opens up some more possibilities in trusting build machines as described above by mschwaig.

>  Could them eventually be stable to be enabled by default?

With enough work and testing, I believe so.

> Would they really reduce the storage and cache usage slope in a significative value?

I believe [this](https://www.github.com/fedora-silverblue/issue-tracker/issues/143#issuecomment-1000931940) comment I came across a while ago is a good explainer. As a TL;DR: being able to change the inputs of a build in a way that doesn't change the output would no longer cause cascading rebuilds, which is good. I'm not sure how significant it would be though as if any of the *output* changes, we still have the cascading rebuild problem. 
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2395156543">link</a>)</summary>

> Should we focus more on UX than we currently are?

Definitely

> What actions would you take to do so?

I think taking three steps would do a lot for end users: encouraging the use of `nix-command`, improving documentation, and providing more channels for feedback

Nix (IMO) already has a lot of good UX in the nix3 CLI with clearer, more defined subcommands, better logs by default, and overall "prettier" output. It has also been consistently improving with changes made to `nix flake update`/`nix flake lock`, `nix eval`, and `nix profile` that help all of them fall more in line with what people would expect (i.e., `nix eval <installable>` not exploding, updating individual inputs with `nix flake update <input>`, and being able to `nix profile remove` packages the same way you `nix profile install`'d them). In contrast, the stable Nix CLI has a lot of functions put into few, individual commands that encourage the usage of vague shortform arguments, which in turn makes things pretty incomprehensible for users unfamiliar with it. This can become quite a major blocker for people trying to become proficient with the tool, all the while nix3 has almost solved many of these core usability issues

Other aspects of the Nix ecosystem (Nixpkgs, NixOS) also have a very good base for making things easier for users (like setup hooks and basically all of the modules system), but without proper documentation their impact is way less than it could be. As I previously explained [here](https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2387240461), I believe this is one of the most important factors in the future of Nix, and we must improve sources such nix.dev and wiki.nixos.org to fill this gap -- else much of this work may go to waste

Lastly, hearing what the community wants must play a pivotal role in how current and future systems are implemented and changed. A good way to do this would be something similar to the yearly community survey, but more focused on specific parts of the project. These should include things like ranked choices for questions regarding usage and free form answers to more general, "big picture" questions. I would also be interested in possibly collecting some broad usage statistics as mentioned in https://github.com/NixOS/SC-election-2024/issues/122
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2387077095">link</a>)</summary>

As I said in a [previous response](https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2381891774), I would like to continue and grow the efforts in https://github.com/nixos/moderation to both log the decisions made by the moderation team and document the processes behind them. Further, I believe SC meetings should regularly invite and include community members to listen in and voice their concerns, as well as have set points of contacts for individual Committee members (similar to the NCA's office hours) for one-on-one conversations; teams created by the SC should take inspiration from this as well in order for it to be truly government-wide
</details>

### Financial support for maintainers ([link](https://github.com/NixOS/SC-election-2024/issues/108))


Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/108#issuecomment-2389840949">link</a>)</summary>

> Would you be in favor of doing something like this? Why or why not?

I think it would be something to explore, but it would require a lot of discussion. The primary concerns would most likely be in how finances are distributed and who receives it, which can be quite a contentious topic given the difficulty of valuating one contributors work over another's (i.e., should we decided by commit count? Number of lines changed? PR count? How do we factor in reviews?)

[Sponsors](https://github.com/NixOS/SC-election-2024/issues/170) would probably help alleviate some of this stress, as relying on Foundation funds (understandably) puts a lot more pressure on how and where money is spent with, with it being able to have a direct effect on Hydra, the binary cache, and other official (critical) infrastructure

> so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time

This expectation (as much as I would enjoy it) also makes this solution more difficult to scale. From what I've seen, the status quo is a company funding one or more contributors work on a specific task, *not* as a regular activity -- as committing to this long term is quite a large investment. Not to say this would be impossible of course, but I believe it would only be possible in practice for a *very* select few (which isn't bad, but something to note)

If we were to lower our expectations a bit from funding part/full-time positions to increasing the amount of contract-esque work contributors receive, that may also allow for many more contributors to at least receive *some* payment for their work. I believe the Foundation can help here as well by regularly showcasing the amazing work being done in our community to industry contacts, as well as encouraging them to reach out for things to progress further (similar to bug bounties)

>  we either need more maintainers, or we need to lower the workload of the ones we have.

I also want to point out that I don't think this is a very binary decision. We can increase the number of maintainers and help them receive funding while also lowering their workload in general. As said in our [community values](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#automation-over-process-and-toil1):

> We build automation and processes that make the best use of our contributors' limited time and energy.

I have elaborated a bit on this [already](https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2387461588), but as TL;DR: there has been a lot of work done in automating many tasks in nixpkgs, and much more on the way. This is rightfully a priority of ours and I believe can work hand in hand with the financial support for maintainers suggested here
</details>

### What is your opinion on garbage collecting the cache ([link](https://github.com/NixOS/SC-election-2024/issues/96))


The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/96#issuecomment-2387521311">link</a>)</summary>

I can mostly agree with tomberek here.

From a purely financial aspect, moving less accessed NARs to something like S3 Glacier is a good solution for our currently cached objects, and long term we should seek to collaborate with more organizations and companies for continued funding (see [my](https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2387041985) [previous](https://github.com/NixOS/SC-election-2024/issues/17) answers on how I believe these should be handled).

Now regarding actual garbage collection, more "transitive" items in the cache (such as those from staging and PRs) should be some of the first to go as it's highly unlikely they will ever be used again (this could also be done on a regular basis for builds older than X years). I would also not be against GCing "leaf" packages, as in many cases they will have very little effect on builds for consumers and (especially as nixpkgs grows larger) can account for a good chunk of packages

If the worst comes to the worst and we find ourselves in a position of requiring mass garbage collection, I believe we should set aside packages we deem critical (similar to what we do in [releases](https://nixos.github.io/release-wiki/Release-Critical-Packages.html), but obviously a bit larger) that *won't* be garbage collected, based on community feedback and S3 statistics. We should also prioritize keeping as many cached *sources* as possible, since having old URLs 404 is much more likely than a given build not being reproducible
</details>

### How should we go about backwards compatibility? ([link](https://github.com/NixOS/SC-election-2024/issues/81))


Currently, we seem to be promising compatibility for stable branches, but in new releases, we are allowed to break "if necessary". Where do you think the line of "if necessary" should fall?

How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

Can you answer specifically about NixOS module options, as well as generally for nix community projects?

[1] ["There are only two ways to change software: growing it and breaking it. We don't break."](https://www.youtube.com/watch?v=oyLBGkS5ICk&t=1189s)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/81#issuecomment-2387303633">link</a>)</summary>

> Where do you think the line of "if necessary" should fall?

First and foremost, breaking changes should only be introduced if there's a clear (large) benefit to the usage of the module options, package/lib attributes, etc. When this does occur, backwards compatibility should be implemented via aliases or small wrapper layers unless it is deemed too large of a maintenance burden, or the change is such is so large that it isn't feasible to use either

> How close do you think we can with long-term backwards compatibility - to the Clojure ideal [1] - given the scale of nixpkgs?

I don't think breakages will ever be avoidable, nor will we be able to adopt something similar to Hickey's idea of only *growing* our collection. However, a lot of tools in nixpkgs -- like `pkgs/top-level/aliases.nix` and *especially* functions in our module library such as `mkMergedOptionModule ` and `mkAliasOptionModule ` -- can get us to an *approximation* of not removing user-facing interfaces that will ease the stress of breaking changes over time

And as said above by illustris, CI checks to flag breaking changes can also assist here by ensuring things are only broken when we explicitly intend to, it's necessary (as defined by above), and that there are no better paths to retaining backwards compatibility according to not just the author, but the wider contributor base. Some prior art here is the Rust community's [Crater](https://github.com/rust-lang/crater) project, which runs automated tests across crates in their ecosystem and compares the results between a new and older version of the compiler

(Also small side note: thanks for linking that keynote! It's been a good listen and I plan on finishing it tonight now :p)
</details>

### How will you ensure the financial sustainability of Nix without compromising its values? ([link](https://github.com/NixOS/SC-election-2024/issues/47))


How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2387041985">link</a>)</summary>

> How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values?

As I said in #17, sponsorships are a necessity for projects of our size. However, we must ensure they fall within [our stated community values](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md) and that we are open to not just recognize, but readily take action on community feedback towards them

> What alternative funding models would you explore

I believe encouraging more community donations would be a great way to ensure more sustainability in some areas -- such as smaller scale, local events that may have trouble finding a sponsor. As said by tomberek above, continuing and expanding partnerships we have with organizations like NLNet will also be a key factor in securing safe, uncompromised funding. Lastly, joining organizations like [Software in the Public Interest, Inc](https://www.spi-inc.org/) would give us a path to both secure our own funding, and encourage the growth of projects similar to ours

> how would you engage the community in these decisions?

Echoing what I said before: we must recognize and quickly act on feedback from our community regarding financial decisions. Without this, sponsorships, grants, etc. would be doing the exact *opposite* of helping to grow our community and making sure [People come first](https://github.com/NixOS/nix-constitutional-assembly/blob/00b53920442a5077fa8c295a9955042e45080323/values.md#people-come-first). Financial decisions under consideration should also be made public and open to comment
</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2024/issues/12))


How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/12#issuecomment-2381910945">link</a>)</summary>

> How would you ensure that the Nix community stays engaged with the Steering Committee (SC)

Regularly reaching out and giving updates on SC activities would be one of the most important aspects, in order for those interested to stay informed with the day-to-day decisions and actions being considered and voted on

> actively participates

As mentioned by mschwaig, involving stakeholders involved in decisions we're making is paramount. We should *never* be making decisions that (in)directly affect people without first taking input, preferably by inviting them to our meetings. And echoing tomberek here, the NCA has done a great job in allowing participation through one-on-one office hours. I believe continuing this would assist greatly in SC members staying connected with the community, and regular users being confident that they are heard and can make a difference

> and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

I find this aspect to be guaranteed to at least be guaranteed initially through the voting process. For the duration of terms however, SC members should stay regularly involved and up to date with the desires of those in the community and put their best foot forward in matching that. There should be no point in which the SC's actions directly result in a group of people feeling unheard
</details>

### Should NixOS/nixpkgs adjust its platform support? ([link](https://github.com/NixOS/SC-election-2024/issues/106))


Of the currently supported platforms, are there any you think should be promoted to a higher tier or demoted to a lower tier? Are there any currently entirely unsupported platforms which should gain some level of support?

(bit of overlap with #97 with re: darwin specifically)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/106#issuecomment-2389729504">link</a>)</summary>

> Of the currently supported platforms, are there any you think should be promoted to a higher tier or demoted to a lower tier?

No, I think we're in a good spot currently. I would *like* to see more platforms promoted to tier 1, but I believe that requires improving their existing support (read: Darwin support) before really considering that

> Are there any currently entirely unsupported platforms which should gain some level of support?

I am a [little bit biased here](https://www.github.com/NixOS/nixpkgs/pull/335067), but aarch64-windows is an important platform to grow support for as Windows on Arm machines become more mainstream
</details>

## Unanswered questions
<details>
<summary>What's the best way for the steering committee to deal with inaction or being ignored? (<a href="https://github.com/NixOS/SC-election-2024/issues/114">link</a>)</summary>

One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?

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
<summary>What do you believe is the most pressing technical issue facing Nix, and how will you address it? (<a href="https://github.com/NixOS/SC-election-2024/issues/16">link</a>)</summary>

What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?
</details>
<details>
<summary>Forge agnosticism (<a href="https://github.com/NixOS/SC-election-2024/issues/120">link</a>)</summary>

What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?
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
