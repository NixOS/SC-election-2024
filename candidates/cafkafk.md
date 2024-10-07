- Name: Christina Sørensen
- GitHub handle: cafkafk
- Email Address: christina@cafkafk.com
- Matrix handle: cafkafk@gitter.im

### Conflict of interest disclosure:

I’m an infrastructure developer for DBC Digital[1], the second largest
financial contributor to the NixOS foundation, according to open
collective[2]. DBC Digital is owned by KL[3] (the national association
for the municipalities of Denmark).

My only major relevant contractual restriction is that other
employments must not compete directly with DBC’s interests.

DBC’s main task is to develop and maintain the bibliographic and IT
infrastructure in the Danish libraries. We make extensive use of NixOS
for this task.


### Motivation to be on the steering Committee

#### What I have done

I’m a systems/infrastructure developer working full time with NixOS
and Rust on a national scale in Denmark. I’m also the primary
maintainer of `eza`, and the person behind forking and creating a
community out of the then dead `exa` project[4]. Further, I’m a NixOS
contributor and committer.

Some people know me for being a major part in the initial Anduril
sponsorship discussions[5], but I’m also the creator of several Nix
adjacent projects:
- Nix Weather, a tool for debugging cache availability of Nix
  packages[6].
- Rime, a FOSS alternative to flakehub, adding semantic versioning to
  flake inputs[7].
- NixLang Wiki, a former alternative to the unmaintained nixos.wiki
  (now deprecated in favor of wiki.nixos.org)[8].
- NixOS Landscape, a project to map Nix Adjacent projects and increase
  discoverability[9].

I’m also a maintainer of the Morph nix deployment tool[10],
Kubernixos[11], and Wharfix[12], a Rust service that spins up a Docker
registry, with images defined as Nix expressions.

In nixpkgs, I was also part of reintroducing Guix to NixOS, and I’ve
been working to modernize the neglected kubernixos module:
- <https://github.com/NixOS/nixpkgs/pull/246975>
- <https://github.com/NixOS/nixpkgs/pull/264331>
- <https://github.com/NixOS/nixpkgs/pull/327842>
- <https://github.com/NixOS/nixpkgs/pull/290119>

Further nixpkgs stats:
- 139 authored PRs merged[13]
- 297 reviews closed, 20 ongoing[14]
- 23 reviews on PRs by new contributors[15]
- 42 packages maintained[16]

I also frequent the NixOS Copenhagen User Group[17], where I’ve
assisted as an organizer a few times, and the Copenhagen Rust
Community[18].

I have the privilege of being in a position where contesting the
positions of powerful community members isn’t career suicide. Further,
as the BDFL of eza, I’ve driven several contentious changes, such as
the introduction of our code of conduct, and I’m well acquainted and
unbothered by the harassment that can follow from leading change. My
track record in Nix shows the same, as I’ve pushed hard for
transparency around NixCon 2023, NixCon 2024 NA, and conflicts of
interest of board members. I’ve also defended gender statistics in the
annual survey, and called out diversity issues countless times.


#### What I will do

I want to create the best possible Nix project. Seriously.

Concrete goals I want to see:
- Introduce strong sanctions and penalties for undisclosed conflict of
  interest in decision making, specially when detrimental to the
  community and project.
- Clear outlines for sponsorships that first and foremost respect
  contributors wishes over company and board interests. The board and
  steering committee must represents the community, not their own
  interests.
- Transition projects, where feasible and sensible, to a Nix project
  self-hosted git forge.
- Stronger FOSS culture, encourage stronger licensing of new Nix
  projects.
- Investigate moving flake-utils into nixpkgs (this was attempted in
  the past, when flakes where considered more unstable).
- Establish “whistleblower” governance mechanisms, ensuring no problem
  remains unspoken out of fear. Anonymous moderation reports isn’t
  enough.
- Introduce CoC transparency reports, like other projects (e.g. CNCF).
- Improve release engineering project wide, specially for the Nix
  package manager.
- Ensure flakes are considered first class features that should be
  documented, even if still evolving, and that flake related issues
  aren’t blocked for being experimental (how else will it ever stop
  being experimental!).
- Ensure representation in leadership of minorities.

Nix package manager specific goals:
- Improve security culture and ownership, avoid miscommunications.
- Increase release stability guarantees, problems should be discovered
  before hitting nixpkgs and users.
- Ensure Nix has a culture open to on-boarding new contributors.
- Regulate external dependencies for subcommands (e.g. nix bundle has
  an ancient nixpkgs flake checkout, breaking it without
  deprecated-features url-literals, an isn’t inside of the official
  NixOS org, so can’t be fixed by the Nix project).
- Find respectful solution to naming of the Nix Package manager,
  solving the “Nix trinity problem” (we’ll end up with NixOS, Nix the
  language, and <Nix Package Manager>).

This list will likely evolve and adapt to suit community needs. I see
a lot of challenges on the horizon, but I believe that the community
can come together to rebuild trust, create a fun and enjoyable
environment, and stop corporate interests from tearing our project
apart at the seams.

Due to failures in leadership, we’ve lost countless valued
contributors, and many of those still left are apathetic and
demoralized. It is my goal to see these contributors represented in
leadership. Nix contributors shouldn’t feel subjected to a system that
doesn’t represent their goals, they should feel empowered, and valued
by leadership.

[1] <https://www.dbc.dk/english>

[2] <https://opencollective.com/dbc>

[3] <https://www.kl.dk/om-kl/english>

[4] <https://youtu.be/4CYinVmTUYA?t=468>

[5] <https://cafkafk.dev/p/code-in-the-crossfire-1/>

[6] <https://github.com/cafkafk/nix-weather>

[7] <https://github.com/cafkafk/rime>

[8] <https://nixlang.wiki>

[9] <https://github.com/nix-community/nixos-landscape>

[10] <https://github.com/DBCDK/morph>

[11] <https://github.com/DBCDK/kubernixos>

[12] <https://github.com/wharfix/wharfix>

[13]
<https://github.com/NixOS/nixpkgs/pulls?q=is%3Amerged+is%3Apr+author%3Acafkafk>+

[14] <https://github.com/NixOS/nixpkgs/pulls?q=reviewed-by%3Acafkafk>

[15]
<https://github.com/NixOS/nixpkgs/pulls?q=reviewed-by%3Acafkafk+label%3A%2212.+first-time+contribution%22%0A>

[16]
<https://search.nixos.org/packages?channel=unstable&from=0&size=50&buckets={%22package_attr_set%22%3A%5B%5D%2C%22package_license_set%22%3A%5B%5D%2C%22package_maintainers_set%22%3A%5B%22Christina%20S%C3%B8rensen%22%5D%2C%22package_platforms%22%3A%5B%5D}&sort=relevance&type=packages&query=%2A>

[17] <https://app.element.io/#/room/#copenhagen-nix:matrix.org>

[18] <https://cph.rs>
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2359167341">link</a>)</summary>

TL;DR:
- Yes, but carefully.
- We can start that transition now.
- We should become forge agnostic to ease future transitions.
- GitHub is still hugely important to growing new contributors, we can't totally abandon it yet.

We absolutely should move away from GitHub, not just because it's a proprietary platform, gating important features behind paywalls, but also because being proprietary means the platforms limitations are only fixable by Github, and they rarely listen. Also, the longevity of the project is at stake, should GitHub enshitiffication continue further. There is no world in which we consider GitHub a permanent residency, and we know from issues such as nixpkgs mass pings that we could have much to gain by having more control over the actual code. Further, control over user accounts would make increasing bus factor on projects a lot easier, since owning the forge would allow us to have a much deeper control over permissions.

What we can't forget is the benefits GitHub offers, those mainly being network effect. I don't think it would be wise to move nixpkgs off GitHub currently, as GitHub, being the *default* forge offers us access to **a lot** of new contributors. While that may not always be the case, currently, I think the tradeoff, specifically for nixpkgs, speaks for keeping it on GitHub... for the time being.

**However**, many projects are ready to be transferred to a self hosted forgejo instance. Whether that's Nix, the RFCs repository, the nixos-homepage, any of these wouldn't suffer from the same traffic loss as nixpkgs would. I think it would be reasonable to consider setting up forgejo infrastructure soon, and moving some of these over, perhaps keeping mirrors available on GitHub for discoverability.

Further, it's important that we do not rely too heavily on GitHub platform features, but ensure our workflows are as forge agnostic as possible, specially in the case that a sudden GitHub update or policy change would make using the platform no longer an option. This isn't likely to happen immediately, I think this platform will likely first be truly *unusable* in the span of decades, but we must be aware that at any moment, GitHub could make changes that make it unusable for official NixOS projects, and we must be prepared in case that ever happens.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2391703264">link</a>)</summary>

I personally believe that NixCpp misuses the "experimental feature" concept as a way to avoid the headache of providing stable releases (same has been seen recently with the notion that NixCpp is a "reference implementation"[1]).

Instead, NixCpp should stop feature gating behavior that has obviously seen wide adoption. At the same time, it should add feature gates for the most unpolished parts, such as `nix-bundle`. 

Then, new breaking changes should be feature gated as well, and when they're ready to be shipped, or a substantial portion of the community has changed over to the new behavior, the gate(s) should be removed on the next major version. I'd suggest making new major versions on some reasonable release schedule, e.g. in time with the nixpkgs xx.05 and xx.11 releases, or perhaps just once a year at either of those. 

There guarantees would lead to a much more stable experience. Also, it would grow confidence, and perhaps restore trust in the ecosystem, and ideally, we'd live to see a time where nixpkgs had a NixCpp version above `2.18` as the default. I've seen plenty of veteran maintainers recently *jokingly* suggest moving nixpkgs to Lix, and if the NixCpp team wants to avoid that, I think the best route is by being a better alternative, not policy[2] as I've heard suggested elsewhere.

[1]: Other famous examples of this cop-out are Mastodon and Element, to the detriment of the quality of those projects.

[2]: I would be strongly opposed to any top-down restrictions about which Nix implementation should be the default in nixpkgs, it should be the one serving the contributors and users, and community at large the best.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2359041857">link</a>)</summary>

TL;DR:
- We shouldn't prevent users from using non-free software.
- We should make it easy for users to opt-out of proprietary software.
- We should normalize stronger licensing of NixOS projects, both official and unofficial ones.
- The project should be very careful not to endorse proprietary platforms where free alternatives exist.
- We should move for stronger licenses in official NixOS projects, and seriously consider if it's possible to create a team to handle potential license questions.

As for how strongly I align with these values, I originally came to NixOS from Guix, which is where I started mainly because it was a FSF project, and I was a card carrying FSF associate member (for about 4 years). I came to be disillusioned with the particular approach of the FSF, but I still am a strong believer in the importance of strong copyleft licensing. All software I write gets a strong copyleft license if possible, and all software I maintain I seek to move towards stronger licensing where possible. I also made https://github.com/cafkafk/rime as a direct response to the proprietary flakehub platform, and licensed it under AGPLv3[1], mainly because I wanted a FOSS alternative to flakehub for my own usage at the time to do version controlled flake inputs.

It's a shame that NixOS (like the rust foundation) tends to adopt overly permissive licenses like MIT. While there are cases where this is a strategic choice, e.g. morph was published under MIT simply because "that was the community norm" and I think that's a shame. 

We don't get that culture change by forcing it. Part of my reason for moving from Guix was simply that graphics drivers are... really nice. Needing to have a `nonguix` repository just to have your distro work for the majority of users based on ideological reasoning is a huge mistake if your goal isn't just earning ideological points. We should never force users into a position where they have to use proprietary software, we must keep the great separation of proprietary and free software that we currently have in nixpkgs. But we also must never make the mistake of trying to dictate to users what software they can and can't have.

Rather than recounting the 4 essential freedoms, I'd much rather emphasis the value they provide to users. Open code is auditable, you can ensure that there are no harmful "dark patterns" or insecure parts, if you so desire, and learning about a product directly from it's code is one of the best ways to understand it (as nixpkgs/nix users will know) . Free code is changeable, it is forkable, it prevents being locked in to a upstream taking advantage of you, and it prevents a project dying just because no one is able to take over the maintainership burden. Copyleft ensures that the labor that went into creating a product isn't exploited, and that if others wish to receive the benefit of the hard work of the contributors, they'll also have to share their labor in the future, so that the contributors aren't taken advantage of[2].

The NixOS foundation has vast resources, and I think one thing that would empower community members to use more bold licenses than MIT is to create a licensing team, to help ensure that official projects are compatible with their dependencies, and able to meet their goals, as well as being interoperable with other parts of the NixOS ecosystem.

[1]: I've since come to prefer the EUPL-1.2 license, as it's a much more serious attempt at dealing with "the SaaS problem", and it's much more interoperable, and with a much stronger legal foundation.
[2]: Of course, the contributors are often still exploited, if they would also pay the contributors that would be appreciated.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2359061991">link</a>)</summary>

TL;DR:
- Yes, but it will take a while, and cost a lot.
- Until we get there, we should try to be as agnostic towards specific providers as possible.
- We should provide caching to both official and community projects.

To the extend possible, yes. Currently, data center space is expensive, and at our scale, we're likely no longer looking at a hobbyist garage full of towers. We have to accept that for a time, we'll likely not have the option to say no to cloud providers, and that they can be useful tools, as they often provide rapid scaling and can be useful for disaster recovery.

That said, we should ensure that infrastructure is made in a cloud agnostic way, so as to be as independent as possible from a single cloud provider, and to make the shift to a self hosted solution as pain free as possible. This also means restricting usage of proprietary software in our infrastructure, to ensure its longevity.

At the end of the day, we can't control when we'll be ready to make the move financially, but we can be as prepared as reasonably possible for when it becomes an option. That said, I think the costs is too prohibitive for our current financial position, but it's very reasonable that it will be possible in the future.

Another thing worth mentioning is that we should consider providing cache to more projects. Ideally, I think the foundation should host a community cache, that would allow tenancy of projects compatible with our values, and meeting certain criteria such as being of a certain size. Making cache more available to smaller projects would be a way in which we can help foster a more lively ecosystem, and user our resources in a way that is useful to the community at large.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2393955384">link</a>)</summary>

> Do you think we should scale down nixpkgs or other Nix projects

For "other Nix projects", depends on the individual project. For instance, I think that the scale of home-manager could easily be extended, as long as there are people behind those extensions to maintain it.

For nixpkgs, as a former Guix user that came to Nix for how easily accessible contributing to nixpkgs is, and the breadth and freshness of the ecosystem, we shouldn't just scale down nixpkgs for the sake of it. After all, we are world class at having this wide and updated of an ecosystem, let's not abandon that frivolously.
![map_repo_size_fresh](https://github.com/user-attachments/assets/3f18e8cb-bb87-461b-a557-ad8b0e97ea89)

...but alas, there is a maintainer burden. One solution I see here is to create a system of tiered support. That would mean that we could keep our breadth, while still not compromising or burdening the progress of nixpkgs core build systems. The ecosystem is too wide to discuss all aspects of it, so I'll focus on the one I'm the most competent with, Rust, and packages I'm very familiar with.

A tiered support system would look something like the following. For simple drive by package contributions, such as a fun program like `pipes-rs` that is just added once and forgotten, it would be considered a low-tiered, best-effort support level. That would mean that if e.g. it was broken after a rust update (e.g. as **many** rust packages were after the 1.80 update), it wouldn't be a blocker on the rust update. On the other hand, a package like `eza`, which has ~weekly updates and very high effort maintainership would be on a high-tiered support, meaning that it would be a potential blocker for such a rust update, given that it's maintainers are responsive and that waiting for it to update isn't something that drags on.

This would also help with other initiatives, such as creating a shared Cargo.lock file for these packages. It's easy to say that those packages that rarely see updates could all fall under a shared, best effort lock file, while those that have a much more active and responsive maintenance should be expected to keep their lockfiles up-to-date themselves. 

I think that ideas like NUR were great, and obvious in a sense, and what works for Arch Linux for instance, but we've run that experiment now, and I think the conclusion is that NixOS is just too tightly coupled of a system for an alternative, still centralized user repository like that to really take off to the scale of the AUR.

A tiered system would mean that we didn't have to compromise on our massive package set, but neither on the standards of our shared nixpkgs commons, and I think it's the best way I've thought of so far to deal with this. Make it best effort, and mark how much effort each package is trying to provide, and then do our best to accommodate that.

We could even create meta attributes for the maintenance tier of a package, and have settings to block ones that aren't actively maintained. There are meta attributes coming in RFCs that could support this effort.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2372040504">link</a>)</summary>

I'd prohibit community members from serving on the board and steering committee at the same time, as I think it concentrates too much power on that individual, and counteracts the checks and balances built into the constitution.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2358993057">link</a>)</summary>

TL;DR:
- The current subreddit needs to work on it's culture before we can responsibly endorse it
- We need to emphasize the technical concentration on matrix if we consider endorsing any Discord server
- Ideally, we create a community section for spaces we find compatible with our values, while not forcing them to be official NixOS spaces.

I think we've seen the Foundation and by extend the "official" community shift too much to a view of the "NixOS Community" being just NixOS/nixpkgs, NixOS/nix, the matrix channels, discourse, and zulip. I think it's a shame when we have veteran contributors calling lix "off topic" or seeing "aux" as a competitor.

The foundation should prioritize official projects, first and foremost, but it should also act as a force fostering a vibrant ecosystem --- of not only official projects --- but also unofficial community ones. There is a certain elitism from people like me who participate mostly on matrix and through more closed channels of direct messages that "those redditors" aren't as real community members as us, and I think that smells a bit of elitism.

I think reddit has a huge culture problem, and I don't think we should direct people there until that is solved on their side. But I also don't think we should force them to follow our rules just to get mentioned. What matters is they're compatible with our values, and create a space that isn't toxic and harmful for its users.

Regarding discord, it's again easy for me to argue against it on the basis of it being a proprietary platform. In no way should the official project ever add a proprietary product and make it load-bearing unless there is exceptional circumstances demanding it. At the same time, we should meet users where they're comfortable, and try to accommodate their wants and needs. The recent discourse thread about opening a new discord server received a bit too much vitriol in my opinion, users should be allowed to organize how they see fit, without us throwing too many stones at them.

The actual reason I'd not want to link discord on the home page is because I fear it would drive users away from the official matrix channels, where there is a lot of highly competent community members willing to help. I think the need for discord in the community comes from a need for a social space, and perhaps if we made that divide clear on the homepage, that matrix had a more technical slant, then it would be more reasonable. In this case, I also think we shouldn't demand they adopt our policies, but we should ensure that their spaces are compatible with our values. And we should remove them from the homepage in the future if they fail to be compatible with our goals for the wider nix community.

We also need to consider whether to just endorse a single subreddit/discord, or if we should just provide multiple options. A solution is to maintain a list of unofficial community spaces that are compatible, but not necessarily official, and put all of those together on a section on the homepage. 
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2391769486">link</a>)</summary>

I'll answer in two parts[1]:

> Let's suppose that the steering committee is now responsive, but when they ask or direct action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

I think there is nuance to this. On one hand, the steering committee shouldn't just come in from day one and turn everything upside down, it should be respectful to the current culture of the various parts of the community and its contributors. At the same time, I also fear that it may end up being a collection of "figure heads", and a thing for the board to point at whenever the community is dissatisfied, to shift blame away from the board. The term "glass cliff" also comes to mind.

Anyways, in the latter case, where the steering committee's authority, as outlined in the constitution is being ignored, I'd try to build up pressure by rallying the community against the particular gatekeepers. This also would to some extend serve as a sanity check for the steering committee, since if the community wont rally behind it, then they're probably not serving the community in the first place.

If it's a board member in particular, I'd rally the rest of the committee to discuss removal, to ensure the wishes of the community aren't being stopped by the potentially conflicting interests of the board.

> How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?

For starters, I'm hopeful that we will get a steering committee that is mostly representative of the community, but I am sure that we will have at the very least a minority of members that aren't aligned with the communities goals. Further, even those that are aligned with with the community may not have the resources or courage to stand up for the community when nescesarry.

In part, just by doing my best to find that courage, I hope to inspire the rest of the steering committee to do right by the community. Regardless of whether or not the steering committee can be persuaded, I'd seek to promote the ideas and criticisms of the community, and I'd do my best to vocalize the concerns to the steering committee and the board.

To give a very concrete example, in the time after the retraction of the NixCon 2023 Anduril sponsorship, I put a lot of pressure on people in positions of power to create a space for the discussion of sponsorship policy, as it was *de facto* banned from any other community space. Often leadership has used these unspoken bans as a way to silence criticism, for instance, they would mute and unlist threads on the discourse that criticized the sponsorship policy, to hide the dissent from the wider community and to avoid taking responsibility (and ultimately, to get away with it again).

A major win was getting this room created, after much unpleasant pushback. Even when we got this room, I found that people in leadership would misrepresent and belittle the people criticizing the board and organizers, and their decisions, and say that they were just looking to cause trouble and weren't actually contributing to the project.

I stood up to this, and made their case for them in their absence, and I was dogpiled by many of the people involved, in a way that was deeply uncharacteristic of people who should be leaders. In particular, a user on the moderation team lost his temper to such an embarrassing extend that he later resigned from the moderation team out of regret for his behavior.

The point being that even if no one will listen, I will do my best to be the voice of valid critique in the absence of the community members who's voice is being silenced, in a space where I can't be ignored, and I'll represent it in such as way that there is no space for simply dismissing the community outright on frivolous grounds. It may be that the community is *unreasonable*, which is extremely rare, and even if, there is some underlying need that is not being met by leadership, and we simply **CANT** afford to ignore those anymore.

And if leadership still fails to listen, then I will be the first to disseminate that, I will be transparent about the dismissals, and I'll ensure that any communication top down isn't deceptive, as was the case with NixCon 2023, where the communication from leadership was that Anduril had been removed as a sponsor out of respect for the community. That was an obvious lie, as I discovered and disclosed widely, it was actually removed because the venue didn't allow them. Further, it was obviously a lie, as Anduril was a sponsor for NixCon 2024 NA, and their office was a stones throw away from the location of the conference.

[1]: This was answered before the footnote was added to the question above. I think mentioning specific cases that were part of the movements that ultimately lead to the constitutional assembly is one of the most concrete ways to answer the original question, and give some historical context for those that haven't been exposed to some of these issues in the past. It also showcases a direct example of how the community ultimately overcame such an issue where it was being ignored by the board, leading to this very election. I'm not re-litigating, and purposefully avoiding using names, but we must learn from past mistakes. If the Anduril sponsorship becomes another unspeakable, we're doomed to repeat something like it again.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2393850717">link</a>)</summary>

I think that for the most part, any sort of data collection **MUST** be opt-in, unless we are speaking in aggregate numbers such as "how many people download from the binary cache" or such bulk metrics. I think most issues opened in Nix projects are served well by the information collected by `nix-info -m` and potential error output as disclosed by the user at their own pace, with their consent. I think if we did collect crash reports it would likely just be a lot of noise that no one would use.

I think what's sought from crash reporting is actually handled much better through hydra and nixos-vm tests replicating users setups, so we can catch error preemptively. So, in general, I'm strongly against automated analytics. I don't think we win anything through it, and we lose a lot of user trust. I think this is an enterprise'ism that doesn't fit any of the projects under Nix.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2391811836">link</a>)</summary>

As someone that was a part of re-adding Guix to nixpkgs, after Ludovic removed it, and someone that originally came from Guix, I think that it would be against the spirit of guix. Ludovic was very critical of many aspects of the Nix project, specially the module system and the at the time "Delft centric" development[1], which I do believe exists to this day (albeit Delft no longer being the center). 

I think having to find inter project consensus, while on a very large scale valuable and useful, is not something that we should currently be focused on, we have much more pressing matters. Frankly, I think that if we don't address the prerequisites, we'd not be able to create a stable bridge between the project anyways (all to say, would be great, but we're not there...yet!).

I do think that we can learn a lot from Guix, not only how the Guix maintainers --- the top leadership positions --- are directly responsible for enforcing the code of conduct, or how it has managed to create a very calm and enjoyable community, but also on the technical side. Grafts are cool! And they're much better at communicating technical developments with the Guix blog. Hey, I've myself made my own `guix weather` for nix, just because I simply missed it too much as a former Guix user. 

I think it's good to create mindshare between the projects, I know that when I was in Guix spaces, most people didn't know what those Nix people were doing with "those flake things". I also know that the Guix people are probably apprehensive about mingling with us given how we've had so much turmoil in recent past. Let's become the kind of project that can create those kinds of bridges, and the kind of project that inspires other projects confidence in investing that kind of effort into shared compatibilities, and create an ecosystem that supports the conditions for such efforts to occur. But I wouldn't push this top down, I think the people that are willing to put in that effort should decide when the time is right for creating said bridges, and lead those efforts themselves (with the support of the project and steering committee no less).

[1]: See this mail on the nix-dev mailing list for instance https://marc.info/?l=nix-dev&m=139641572912409&w=2
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2391848251">link</a>)</summary>

We do in fact have `replaceDependencies` and `replaceRuntimeDependencies`, but my very shallow understanding of both of these is they have downsides that make them not at all equivalent. As I have outlined elsewhere, I think the graft system would likely be very useful, and as Delroth (the contributor on the front-line of dealing with the libwebp vulnerability) outlined in a post[1], these are useful, albeit slightly hacky tools for fast security mitigations.

[1]: The post in question https://delroth.net/posts/nixos-security-wishlist/

---

@doronbehar asked where to read more about this, there isn't a mention in the NixOS/Nixpkgs manual, or Nix reference, but you can read about it [in the source code of nixpkgs](https://github.com/NixOS/nixpkgs/blob/dbddb7982786880db5849eef097107bceef1b165/pkgs/build-support/replace-dependencies.nix#L7)
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2395287908">link</a>)</summary>

I'd prefer to focus on the open PRs part of this and avoid the Wayland protocol
debate. Also this answer is just for nixpkgs. And... I should start by saying
that nixpkgs is one of the most productive projects on GitHub, so it is doing a
lot of things right. But there is room for improvements.

Nixpkgs has several issues that increase the time it takes for a PR to get
merged, here are some I think are particularly actionable:

- Slow CI 
- Unclear guidelines 
- Discoverability problems 
- Lack of ownership 
- Commit bits are binary 
- Review Culture

### Slow Ci

Currently, the CI for nixpkgs catches a lot of errors that makes a PR
unacceptable, which saves a large part of the maintainer burden associated with
reviews. The problem is that certain CI steps, particularly those related to
`passthru.tests`, and even more so the MacOS ones have a lot of problems.

One thing that massively slows down a lot of merges is the lack of clarity
around CI. Should you wait for the MacOS runners, even if they've taken several
days now?  Are they currently broken?

This problem is exacerbated by unclear guidelines around CI. While it's
highly practical that veteran committers are able to merge without waiting for
all tests in case of security issues for instance, the common version bump or
minor refactor can get stuck in limbo.

Another problem that arises from unclear CI guidelines is that when people end
up merging something (whether self merge or after a review), and there are CI
steps that have yet to be completed, even if those steps may not have been worth
waiting for (e.g. they ran the MacOS `passthru.tests` locally), other committers
may still scold them for doing so. I've observed this leading to a cooling
effect, where many seem scared to merge until they're absolutely sure not just
of the quality of the PR, but also that there is no way for others to criticize
them for doing so.

### Unclear guidelines

In the same vein as above, nixpkgs in general suffers from a problem of unclear
guidelines. This results not just in slow merges, but has even lead to
contributors leaving the project.

While a lot of the expectations for a good PR are codified in various markdown
files, they all have slight discoverability problems. Also, there is no single
centralized checklist that you can follow to ensure that a given PR lives up to
formal standards.

This leads to a situation where a lot is left up to the individual reviewer, and
while that flexibility can be useful in many situations, it can also leads to
cases where various nitpicking will stall a review, and grind down the
contributors.

One of the points of guidelines and CI checks is that they reduce or eliminate
nitpicking. The stronger the guidelines, the less is left up for debate. This
also benefits the people with a particular axe to grind, instead of having to
fight for your nitpick in every single review, having a centralized shared
rule-set means that you just have to reach community consensus once, and get it
added.

Better guidelines will also mean that a contributor can ensure that their PR
will cause as little friction as possible. The ideal state is one where if
you've lived up to all the codified expectations of the project, your PR will be
approved without needing changes. Every round trip costs a significant amount of
effort for both parties, and at any point either party may become too tired of
the process that they give up, and all of that effort is lost.

### Discoverability problems

Often times, matching a reviewer with a PR that is of interests to them is done
through the CODEOWNERS file. While this is very efficient for parts of the
codebase that are critical, a less restrictive version of this solution would be
useful for maintainers. While ofborg will do a best effort to ping maintainers
on their packages, wider areas of interest can often go undiscovered. I've
personally had a few times where I've just stumbled on a kuberenets PR that
solved a problem I was highly interested in, and wished there was a mechanism
for being pinged about anything kubernetes related.

In many other projects, it's possible to simply watch a repository and just
ignore unimportant notifications, but for distributions, and specially those at
the scale of nixpkgs, that is way too much information.

Solving this by dividing into topics would be a huge improvement for matching
contributors, and it's somewhat the solution you see other projects like the
Linux kernel employ.

There are currently attempts at this being worked on, but I think they still
could be improved drastically, and heavily speed up nixpkgs development.

### Lack of ownership

In cases where someone has maintained a package, module, or "subsystem", and
will continue to do so for the foreseeable future, it's important to give those
people some authority to decide on the direction of the things they maintain.

Drive-by reviews with various expectations of additions, scope creep, and added
friction often just increases the load places on these maintainers. It should be
the case that for many of the decisions about the direction of a part of
nixpkgs, the people that have to maintain those should get a larger say in how
they're run.

In eza we have a similar concept of committers privilege. The person that
commits the code gets to decide what direction to go if there is bikeshedding,
and CODEOWNERS have a larger say about the parts they own. This helps reduce
friction over time, gives ownership of the people actually doing the work, and
leaves them more motivated to work on the parts of the code they own.

Basically, by giving ownership to contributors, you ensure they're not alienated
from the things they work on. There is nothing more morale reducing than feeling
forced to work on problems you don't care about.


### Commit bits are binary

A problem that has been attempted to address for a while is that currently, the
commit bits lack granularity. The community has been working on initiatives such
as the merge bot, massively reducing the friction of merging package bumps for
maintainers doing simple version updates.

However there is still a lot of room for improvement. Delegating and giving more
people the ability to be self sufficient would be a massive improvement. Nixpkgs
is full of PRs that are already done, but simply lacks a committer to merge
them. And given the enormous size of nixpkgs, we simply don't have enough active
committers.

This is one of the hardest problems to solve, and also one that is hard to solve
in any open source project. On one hand, delegation of responsibility is an
unavoidable part of distributing the maintenance burden, it is simply
unavodiable, but on the other hand, it increases the amount of people who can
cause breakage and harm, whether maliciously or simply on accident.

More granular merge rights would be very useful, and we may be able to get far
with just bots and tooling, but we're also gonna have to find ways to create
more committers, and that often may mean spending time on mentoring that could
instead be spend on tackling features, which people often prefer.

Still I think just with tooling we can get really far here.

### Review Culture

A final point that could cause rapid improvement is to codify and disseminate a
stronger review culture. Simple things such as being explicit when something
isn't blocking, learning to not submit a PR until you think it's actually ready,
keeping changes small and reviewable, not reviewing the person but the code, all
of these are often massive improvements to a review process.

There is a bunch of literature on the subject[1], and we should absolutely
normalize using the ideas from this, as well as document it as norms for how to
review PRs. By doing so, we make more people aware of what's good practice, and
also we give them something to refer to in case there is a conflict in a review.

[1]: There recently was an excellent talk on the subject,
https://youtu.be/IvPMsdTS5wg, outlining a lot of what can go wrong in a review, 
both from the reviewer's and author's perspective.
</details>

### What are your thoughts on cross-compilation? ([link](https://github.com/NixOS/SC-election-2024/issues/121))


What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/121#issuecomment-2393888006">link</a>)</summary>

> In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?

I hope it's okay that I answer this in a roundabout way, to build up the reasoning with the "easier" case of platform support.

I think that if the maintainer(s) of a package in nixpkgs have decided they want to support multiple platforms, and someone sends a PR that breaks the other platforms they have decided to support, the conflict mediation should lean towards the preferences of the maintainers. This also means that if maintainer(s) have chosen not to support some particular platform, and someone wants to add it to the package, they shouldn't expect the maintainers who haven't opted-in to the scope creep to maintain it. 

Essentially, we should:
- Respect the support goals of the maintainers of packages
- Not scope creep maintainers with drive-by PRs that we're not gonna be the ones to keep running

This also means that ideally, if you want to have some package supported on some platform that the maintainers can't or wont support, you should seek to become one of the maintainers of the package, and the other maintainers should have reasonable patience for you to fix breakage related to version bumps.

I also can't help but think that in the worst case, having multiple packages for different platforms is useful in these situations, with potentially different maintainers, but this isn't a pattern used much in nixpkgs. We also don't have a way of specifying which maintainers support which platform of a package, we just assume they support all of them, which I think is a mistake.

---

I think this line of thinking extends to cross compilation, only that cross compilation is a much harder problem. If the cross compilation support is merely a drive by effort, it may unnecessarily scope creep the burden of maintainers for a fairly niche use-case, and without some maintainer that is dedicated and responsive to maintaining it at the package level and tests to ensure that it's not breaking on changes to the package, it's not always realistic.

One a more nixpkgs wide level, I think it strongly depends on the individual case, what's breaking, and what the costs and benefits of the breakage is. I don't think we should just allow breakage for progress at any cost, but if avoiding the breakage becomes too costly, or if no one steps up to maintain the cross compilation support for the affected parts, then I don't think it's reasonable to make it a blocker. That said, if there are willing contributors ready to help mitigate breakage, I'd lean towards giving them a reasonable amount of time to mitigate issues, or if the contributors breaking the cross-compilation support makes obviously unreasonable changes, to ask them to correct them.

We could create concrete guidelines and rules for this, but they would depend on the amount of people able and willing to mitigate breakage, and there would be exceptions such as security issues that would likely still take priority. But I'm sure that it's possible to get to a reasonably stable situation with cross compilation if there are people that are willing to step up and do that maintenance work, and we could also expect some amount of care to be taken to not break it, but not more than reasonable.
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2391860315">link</a>)</summary>

> Should we focus more on UX than we currently are? What actions would you take to do so?

I think the steering committee should support any initiatives for improving UX, and should there be any UX experts in the community willing to lend a hand improving the UX experience, they shouldn't be gatekept for being "non-technical", but brought into various projects (such as NixCpp), and their reviews of pull requests should be encouraged and valued deeply.

As authorities on the technical direction of the project, we should aid support and advocate for UX issues contributors raise, and ensure their voices are heard and not dismissed. We should also do so in a way that doesn't become scope creep, where we unduly add new work onto PRs and issues that didn't introduce some problematic UX, but we should strongly encourage new developments to listen to UX concerns, and we should support and encourage making changes that are purely UX related, with whatever tools we find available in the given situation.

I think being able to improve UX will be much easier with a stronger release engineering culture, as it will allow introducing more planned breaking changes.
</details>

### What your thoughs about a NixOS-like thing for clusters? ([link](https://github.com/NixOS/SC-election-2024/issues/117))


A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/117#issuecomment-2391838731">link</a>)</summary>

This is something I really want to see. Like **REALLY**. I also know it would be incredibly hard. I'm currently gently dogfooding some very primitive concepts for potentially creating some sort of `nix-rebuild` for a "NixOS cluster", but those are efforts I consider outside of the scope of the steering committee.

Also purely on the technical side of this:

> One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL

The way we're currently doing it at DBC is that we have 3 datacenters with NixOS hosts that serve as container nodes and control planes, and we specify manifests with our tool kubernixos in the nix languag, and docker container images with the nix language again, served by another tool wharfix, which mimics a docker registry, making nix expressions available as images, and deployed with the Nix deployment tool morph.

Personally, I could imagine a future where we or another company would use microvm.nix to create hosts as a replacement for HCL (this is also something I'm very slowly and humbly working on dogfooding privately), and by combining the creation of VMs, deployment of hosts (with e.g. iPXE and diskos and a bit of magic), and NixOS containers with something like wharfix and kubernixos, a deployment tool that could deploy an entire kubernetes cluster to hybrid-cloud platforms could exist. And hey, perhaps one day such a tool could absorb the orchestration aspects of such a cluster, replacing kubectl as well as maybe... one day... kubernetes...

But as a steering committee member, these wouldn't be areas of focus, I think governance issues are much more pressing, and technical developments like these much better left to bottoms up efforts of those pushing the commits, and the steering committee would best serve its role as a guiding and mediating force, as well as one that makes technical assistance available in cases of disputes and for concerns with integration into the wider ecosystem.


</details>

### Forge agnosticism ([link](https://github.com/NixOS/SC-election-2024/issues/120))


What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/120#issuecomment-2393916526">link</a>)</summary>

> What's your stance towards becoming agnostic of a specific code forge, and what actual steps towards that goal do you have in mind?

#### For nixpkgs, and other Nix projects and their CI
Looking at how closely the Forgejo actions syntax and semantics are to GitHub[1], I don't actually think that most of the generic workflows currently in use would be an issue. What's more problematic is over-reliance on GitHub'isms, and it's important that from a top-down perspective, that is taken into consideration when designing systems so said GitHub'isms don't become load-bearing.

#### Specifically for NixCpp, and flake inputs
It's extremely problematic that we have "first-class" support for GitLab and GitHub in such a deep way, without having it for the other free as in freedom forges. I've often talked about the need for a more generic forge input. With rime, we were able to support rewriting tarball requests to GitHub, Gitlab, Gitea, Forgejo, SourceHut, and even FlakeHub, and it was surprisingly trivial. We even have auto-discovery mechanisms, again, a proof of concept that a generic forge endpoint is very much possible. But this middleware approach just doesn't cut it, it should be a native part of Nix to support all of these, and perhaps we should even create some generic Nix standard for interacting with "forges", in the same way as e.g. OCI has a container registry spec.

A spec and a standard? Not soon. But native support inside of NixCpp for all major forges? Doable, and worth prioritizing.

[1]: As Forgejo itself attests https://forgejo.org/docs/v1.20/user/actions/
</details>

## Unanswered questions
<details>
<summary>What is your stance on sponsorships in the Nix community? (<a href="https://github.com/NixOS/SC-election-2024/issues/17">link</a>)</summary>

What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).

</details>
<details>
<summary>Should Nix Have a Home Management System? (<a href="https://github.com/NixOS/SC-election-2024/issues/83">link</a>)</summary>

Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?

</details>
<details>
<summary>Should `nix-community` fall under formal governance? (<a href="https://github.com/NixOS/SC-election-2024/issues/11">link</a>)</summary>

Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?
</details>
<details>
<summary>What is your vision for the future technical direction of Nix? (<a href="https://github.com/NixOS/SC-election-2024/issues/50">link</a>)</summary>

What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?
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
<summary>Bootstrappability and independence from binary sources (<a href="https://github.com/NixOS/SC-election-2024/issues/119">link</a>)</summary>

What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?
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
