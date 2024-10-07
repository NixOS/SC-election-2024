- Name: Niko Cantero
- GitHub handle: @nyabinary
- Email address: nyanbinary@keemail.me
- Discourse handle (optional): @nyanbinary
- Matrix handle (optional): @niko:nyanbinary.rs

### Conflict of interest disclosure

None.

### Motivation to be on the Steering Committee

I am running for the Steering Committee because I have a deep love for Nix and its community, and I want to help it reach its full potential. Nix has been an integral part of my life for over a year, and I am fully committed to advancing it both technically and socially. The principles of declarativity, reproducibility, and reliability are what make Nix special compared to everything else today. I believe we can and should expand these to include automation, which will empower Nix to grow even further.

Nix is defined by its community. The passionate users and contributors are the heart of Nix, and that’s why I’m running to represent the community. I want to ensure that the Steering Committee operates with complete transparency, amplifying your voices and ensuring our governance is inclusive, reflecting the values we share.

On the technical side, my focus is on driving Nix forward by fostering innovation while safeguarding the stability that users depend on. My goal is to balance progress with the foundational principles that have made Nix a success, ensuring that it continues to evolve while staying true to its roots.

Additionally, I am deeply committed to advocating for copyleft and free software principles, ensuring that future Nix projects remain open, collaborative, and aligned with our shared vision of a free and open-source ecosystem. By integrating these values into every aspect of Nix’s growth, I believe we can secure its future as a leading force in the open-source world.

#### What I have done

- Played a pivotal role in making the out-of-tree [NixOS COSMIC flake](https://github.com/lilyinstarlight/nixos-cosmic) possible, including packaging COSMIC apps in nixpkgs, establishing the [NixOS COSMIC Matrix channel](https://matrix.to/#/#cosmic:nixos.org), and initiating efforts to [upstream COSMIC to nixpkgs](https://github.com/NixOS/nixpkgs/issues/259641).

- Authored multiple [PRs to nixpkgs](https://github.com/NixOS/nixpkgs/pulls?page=2&q=is%3Aclosed+is%3Apr+author%3Anyabinary) and maintain multiple packages on nixpkgs, contributing to the continuous improvement of the Nix ecosystem.

- Co-authored and currently working on [RFC 0182](https://github.com/NixOS/rfcs/pull/182).

- Participated in governance discussions across various platforms like [Discourse](https://discourse.nixos.org/u/nyanbinary/summary), [Zulip](https://nixpkgs.zulipchat.com/#narrow/sender/715169-Niko-Cantero), and more.

#### What I'll do

As a member of the Steering Committee, I'll advocate for the following:

##### Technical Goals

- Stabilize flakes as v0, then develop next-gen (or “flakesv1”) flakes to address long-standing design issues.
- Make flakes first-class, fully documented features, ensuring flake-related issues aren’t blocked by their experimental status.
- Formalize an official Nix language specification to ensure consistency and clarity in development.
- Advocate for declarative disk management, declarative secret management, and a home management system to enhance system reproducibility.
- Explore integrating flake-parts into nixpkgs as flakes become more stable.
- Advocate for automating nixpkgs to reduce contributor workload, focusing on implementing automated bumps for a curated core set of packages to keep them consistently up-to-date with minimal manual input.
- Improve Nix error messages to make them more intuitive and easier to understand.
- Improve and centralize all Nix-related documentation.
- Lower the barrier to learning and contributing to Nix, making it more accessible to newcomers.
- Reduce reliance on proprietary platforms like Microsoft’s GitHub by transitioning to self-hosted infrastructure where feasible.
- Self-host our own binary cache instead of relying on third-party services.
- Advocate for optimizing Nix to improve speed, reduce resource usage, and enhance efficiency, making common operations faster and more responsive for users.
- Advocate for expanding cross-platform support for Nix, making it easier to use on different operating systems like Windows.

##### Licensing and Ethical Goals

- Encourage stricter copyleft licensing for new Nix projects.
- Implement strong penalties for undisclosed conflicts of interest in decision-making, especially when detrimental to the community or project.
- Establish clear sponsorship and partnership guidelines prioritizing contributors’ wishes over company or board interests, ensuring the board and SC represent the community.
- Support transparency in decision-making by publishing SC voting records, ensuring accountability and clear communication of decisions.
- Ensure the SC operates transparently, keeping the community informed and engaged in all major decisions, and publishing regular transparency reports.
- Advocate for transparent donation and funding processes, ensuring contributors know how funds are allocated and spent.

##### Community-Specific Goals

- Establish regular feedback loops for the SC, allowing the community to provide input on decisions and ongoing initiatives.
- Involve the community in decision-making processes and consistently seek feedback to ensure community voices are being heard.
- Advocate for direct community participation in SC decisions through regular community referendums on major changes, fostering a sense of shared ownership.
- Establish community-driven roadmaps and hold open SC meetings to involve contributors in setting the project’s direction.
- Promote stronger community representation in all governance structures, ensuring that every voice, especially from underrepresented groups, is heard.
- Introduce whistleblower mechanisms to address issues without fear, going beyond anonymous moderation reports.
- Establish more frequent community meetings to openly discuss upcoming SC initiatives and foster direct dialogue between contributors and leadership.
- Advocate for SC member office hours to ensure that contributors can easily reach out and engage with leadership.

I want this list to evolve with input from contributors and the wider Nix community. It's important for me to understand what the community wants from Nix and what the community feels should be prioritized. By regularly engaging with the community, we (the SC as a whole) can ensure the direction of Nix aligns with what the community needs and wants from Nix :).
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2394331517">link</a>)</summary>

Yes.

Overall, I agree with Cafkafk's approach: gradually transitioning away from GitHub makes sense for the Nix community. I have concerns about GitHub’s proprietary nature and feel that reducing our reliance on such platforms would better align with our values. While I respect GitHub's role in fostering our growth, Microsoft's control raises long-term concerns. Moving to a self-hosted Git forge, like Forgejo or GitLab, would offer us more granular control and transparency. However, maintaining forge-agnostic tooling is important to ensure flexibility for any future transitions we may face.
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2396706171">link</a>)</summary>

I'm leaning to being opposed to sponsorships from the military industry complex, and most definitely opposed to sponsorships from gambling companies. I also want to make sure that none of our community values are being compromised in relationship to being sponsored by any company. Furthermore, I intend to make sure that none of the companies potentially sponsoring us have influence on the way Nix is run and the direction Nix is going. By advocating sponsorship which incorporates these points, I hope that is resistant to corporate influences and Nix will continue to be community-run and for the community first and foremost.

> Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)

Yes.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2394435569">link</a>)</summary>

I fully support stabilizing both nix-commands and flakes.

More specifically, I want to stabilize flakes as a “v0” version. This allows us to establish a stable foundation while identifying and addressing the design flaws and limitations that have persisted in flakes up to this point. Looking forward, I envision a “flakes v1” that could incorporate breaking changes to resolve these issues, while maintaining the flexibility and utility that flakes bring to the Nix ecosystem.

For a “v1” release, I believe it should be marked under experimental features to allow for more iterative and transformative improvements without impacting the stability of “v0.” By separating “v0” and “v1” in this way, we can ensure that flakes continue to evolve, guided by community feedback, without sacrificing the stability that users currently rely on. I believe this approach will let us experiment and refine while keeping the existing system robust for current users.
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2396726645">link</a>)</summary>

I think it should and would advocate for creating a `Home Management` team to tackle these issues and set recommendations on what the best path forward on having a home management tool, whether that integrating it directly into Nix (which I, personally, think is the right approach), or not.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2394474187">link</a>)</summary>

I agree with both Scrumplex and Cafafk's views, and strongly align with copyleft and FLOSS principles. My commitment to these values is based on the belief that software should prioritize user freedom and respect. Copyleft is essential for ensuring that software remains open and accessible, fostering a collaborative ecosystem. By advocating for stronger licensing, I aim to protect the free software ideals of allowing users to study, modify, and share software.

At the same time, I respect users' freedom to choose non-free/libre software. Nixpkgs should continue caching and distributing various licensed software, provided their licenses allow it. Freedom means empowering individuals to make their own choices.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2395293032">link</a>)</summary>

I agree with Cafkafk's approach on transitioning to self-hosting the binary cache, but I also believe we should focus on immediate steps to manage costs, such as garbage collecting the current cache to keep costs low(er). While we work toward a self-hosted solution, maintaining provider-agnosticity is key, and careful management of existing resources like the cache will help minimize financial strain. In the long term, transitioning to a self-hosted, cloud-agnostic solution will strengthen Nix's independence and better align with our principles.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2395431740">link</a>)</summary>

No. 

However, I agree that community projects should follow Nix's general guidelines and values, ensuring they align with the broader goals of the ecosystem. However, I also believe that community-driven initiatives should maintain a level of independence, away from bureaucracy. There should also be a clear pathway for community projects to transition into official projects if they demonstrate sustained value, quality, and engagement with the community. 
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2395291741">link</a>)</summary>

I think most of the general sentiment above, but I would push for more aggressively removing broken packages and unmaintained upstreamed packages as well. I think we should keep the scope of nixpkgs and can even include nightly software if we have great automation as well (we already package some packages like that in firefox-* packages).
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2396728744">link</a>)</summary>

My vision for the future of Nix emphasizes a focus on full declarativity and reproducibility. I believe that making every aspect of system management fully declarative will ensure consistency and predictability, which are fundamental to user confidence in Nix. Reproducibility is equally crucial, it ensures that what users build is reliable, from their development environments to deployments to their own personal configurations. 
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2396714866">link</a>)</summary>

I agree with Cafkafk, Gabriella, and Infinidoge regarding the necessary constitutional changes. My main focus would be to advocate for amendments that make governance more representative of the broader community and provide direct avenues for community involvement in key decision-making processes.

I strongly support the introduction of approval voting as it simplifies the process, making participation more accessible and increasing voter turnout. Additionally, separating the board and the SC is a must in my eyes, it's a no-brainer amendment to the current constitution that will prevent the concentration of power.

Furthermore, I believe in empowering the community through referendums and structured ways for voting on important initiatives. Creating more opportunities that allow for community-led governance and input will ensure the voices of all members are heard and respected, reducing the risk of significant changes being made without community input. Transparency is another crucial element that needs **serious** improvement in my opinion. I would work towards publishing SC voting records and ensuring meeting minutes are publicly available, ensuring openness in all aspects of governance.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2396673747">link</a>)</summary>

Like many others have said above, I believe unofficial spaces should stay unofficial, but I also would like to see unofficial spaces follow some basic guidelines and have active moderation to be put on the homepage. I also believe that if they want to become official spaces, there should be a pathway to becoming an official space.
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2394452286">link</a>)</summary>

To ensure the safety and inclusion of minorities in the Nix community, I would advocate for consistent enforcement and regular transparency reports on moderation actions. I believe this transparency is **essential** for building trust and accountability. 

In decision-making, I will push for mechanisms like community surveys, anonymous feedback channels, and representation on teams. I would also encourage regular community-wide check-ins to ensure that minority voices are not only heard but meaningfully integrated into our governance, contributing to a more inclusive and balanced decision-making process.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2394814538">link</a>)</summary>

Yes. (It's, in fact, one of the main reasons I switched to NixOS in the first place)

I believe the declarative nature of NixOS is a fundamental strength that sets it apart. It empowers users to manage systems with precision, fostering both predictability and reproducibility. As we progress, I am committed to advocating for enhancing this declarative approach by minimizing system state as much as realistically possible. My goal is to extend these benefits to all system aspects, including secret and home management, ensuring consistency while maintaining flexibility and ease of use.
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2380648726">link</a>)</summary>

To address the challenge of reducing the number of open PRs in Nixpkgs, I would advocate for more automation within Nixpkgs, with a particular emphasis on expanding the capabilities of OfBorg. By automating more aspects of the package management process, we can significantly reduce the manual toil/workload on maintainers and committers, which is, in my opinion, critical for preventing burnout and retaining the bulk of our contributors. I will also push for the implementation of automated bumps for a carefully curated core set of packages, ensuring these packages remain consistently up-to-date with minimal manual input. These packages will be supported by a suite of automated test (including unit, integration, regression, and performance test) further decreasing the manual effort required from reviewers and allowing them to focus on more fulfilling tasks than mind-numbingly tasks that require lots of tedious manual labor.

Furthermore, I recognize that many in the Nix community find it challenging to contribute back to the Nix ecosystem, according to recent Nix community surveys results. I will advocate for clearing away roadblocks that make it difficult to contribute, ensuring that the barriers to entry are minimized and that new contributors can more easily participate in the ecosystem. This will involve streamlining processes, improving documentation, and providing better onboarding resources. Additionally, I will actively seek feedback from the community on specific pain points and work collaboratively to address these issues. By making it easier for people to contribute, we can foster a more vibrant and inclusive community, ultimately strengthening the entire Nix ecosystem as a whole :).
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2395456973">link</a>)</summary>

I believe content-addressed derivations would significantly improve the storage and cache usage situation in Nix by optimizing how derivations are handled. Since ca-derivations rely on content rather than paths, they reduce duplication and make caching more efficient. This would allow for better reuse of existing derivations, thereby reducing the storage footprint and improving performance in large-scale environments. So yes, I do believe they would have a significant impact on storage and cache usage in a pretty significant way too. :3
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2395283745">link</a>)</summary>

I would like to advocate for several ideas that I have to make decisions open and keep the community informed. 

I would advocate for publishing SC voting records and key reports, which would give a clear picture of why decisions are made. In my opinion, regular and transparent SC meetings, where contributors and community members can observe or participate, will also facilitate inclusion and transparency.

I would advocate for introducing formal mechanisms for gathering input, such as surveys, open forums, and an anonymous feedback channel where contributors can voice concerns without fear of retaliation. This would allow all voices in these governance processes.

I would also support the use of collaborative decision-making tools like Loomio, to allow broader participation in discussions. This would be paired with a Q&A session where people can ask questions about important decisions made by the SC. Moreover, an open decision log would allow the community to keep track of key decisions in a transparent and accessible way.

I am interested in setting up whistleblower mechanisms and holding more frequent community meetings to promote accountability. Open office hours for SC members, where they are available to the community for direct conversations, would also be a valuable step in ensuring transparency in my eyes. Regular transparency reports is also something I would like to see, keeping the community up to date with the SC activities and decision-making processes.

Finally, to safeguard the community’s interests, I would advocate for clear guidelines on sponsorship and partnerships, ensuring contributors’ priorities are respected over corporate interests. Maintaining a high bar of trust and accountability within the Nix ecosystem requires transparency in donations and funding, assuring contributors and the wider community knows how funds are distributed and spent.
</details>

### What are your thoughs about integrating distributed stores into Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/113))


AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/113#issuecomment-2395296215">link</a>)</summary>

I am quite interested in exploring the possibilities of integrating distributed stores like IPFS into Nix. While I understand some concerns regarding performance and redundancy, I believe IPFS could still play a valuable role in increasing decentralization and resilience within Nix's infrastructure. **However**, careful consideration would be needed to address the challenges raised, such as system overhead and implementation complexity.
</details>

### How will you ensure the financial sustainability of Nix without compromising its values? ([link](https://github.com/NixOS/SC-election-2024/issues/47))


How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2395297475">link</a>)</summary>

To ensure the long-term financial sustainability of Nix while preserving its open-source ethos, I would explore a range of community-centric funding models, such as crowdfunding and donations from the community. Additionally, I would advocate for grants from organizations aligned with open-source principles (like the Sovereign Tech Fund).

Corporate sponsorships would be carefully vetted to avoid conflicts with community values. Transparency is key here, so I would push for the community to be actively engaged in these decisions through open forums and discussions, ensuring that we stay true to the foundational ethics of Nix.
</details>

### What do you believe is the most pressing technical issue facing Nix, and how will you address it? ([link](https://github.com/NixOS/SC-election-2024/issues/16))


What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/16#issuecomment-2396685063">link</a>)</summary>

The most pressing technical issue I see facing Nix is the accumulation of technical debt, the stagnation of key experimental features, including flakes. Over time, these issues have made it harder for the project to advance and create barriers to broader adoption. Addressing these challenges requires a focused effort on reducing technical debt, stabilizing the experimental features that many users rely on, and working towards achieving reproducibility.

By tackling these issues and fostering more innovation in experimental features (and in general), I believe we can enhance the overall quality and usability of Nix. Additionally, I agree with proofconstruction that achieving bit-for-bit reproducibility is crucial for building trust and consistency across the software industry, and it would significantly improve the reliability and predictability of the Nix ecosystem. 
</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2024/issues/12))


How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/12#issuecomment-2395297918">link</a>)</summary>

To ensure community engagement and participation in SC decisions, I believe it’s crucial to implement consistent communication channels, such as feedback loops through surveys, open forums, and community meetings. Establishing regular feedback sessions where contributors can openly discuss concerns and suggestions ensures the SC reflects the community’s values. I would also promote transparency through regular SC updates and decisions being openly documented.
</details>

### Which candidates would you like to work with on the Steering Committee? ([link](https://github.com/NixOS/SC-election-2024/issues/101))


If elected to the Steering Committee, which other candidates would you prefer to work with, and why?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/101#issuecomment-2396729142">link</a>)</summary>

Everyone :3 
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
<summary>What is your plan on improving the darwin PR situtation? (<a href="https://github.com/NixOS/SC-election-2024/issues/97">link</a>)</summary>

Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?
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
<summary>What are your thoughts on cross-compilation? (<a href="https://github.com/NixOS/SC-election-2024/issues/121">link</a>)</summary>

What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?
</details>
<details>
<summary>Bootstrappability and independence from binary sources (<a href="https://github.com/NixOS/SC-election-2024/issues/119">link</a>)</summary>

What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?
</details>
<details>
<summary>How can we improve UX? (<a href="https://github.com/NixOS/SC-election-2024/issues/109">link</a>)</summary>

We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?
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
