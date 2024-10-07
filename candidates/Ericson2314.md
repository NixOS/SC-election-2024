- Name: John Ericson
- GitHub handle: @Ericson2314
- Email address: nix@JohnEricson.me
- Discourse handle (optional): @Ericson2314
- Matrix handle (optional): @Ericson2314:matrix.org

### Conflict of interest disclosure

I work at Obsidian Systems, which does Nix consulting. Ryan Trinkle who
served on the constitutional assembly is one of my bosses. I am also a
beneficiary of this ongoing nlnet project: <https://nlnet.nl/>, which
overlaps with my agenda for the steering committee as described below.

### Motivation to be on the Steering Committee

#### What I have done

I am a member of the Nix team, and I've done a lot of work on both Nix
(<https://github.com/NixOS/nix/graphs/contributors>) and Nixpkgs
(<https://github.com/NixOS/nixpkgs/graphs/contributors>) (and Hydra
(<https://github.com/NixOS/hydra/graphs/contributors>)), such as

- <https://github.com/NixOS/rfcs/pulls?q=is%3Apr+author%3AEricson2314+is%3Amerged>
  A number of accepted RFCs.
- Revamping the Nixpkgs cross compilation infrastructure
  - Adding support for new systems using it (most complex: various BSD
    cross)
  - Split up building LLVM/Clang into proper bootstrapping steps
- Content-addressed derivations experimental feature
- Unit tests for the daemon protocol
- Misc Hydra maintenance work
- Modular Meson rewrite (breaking Nix build up to show how the libraries
  stand alone)
- Doxygen for Nix C++ interfaces
- Store layer documentation
- "libnixflakes" split out
- Started Windows port
- Dynamic derivation experimental feature

There are probably more things I am forgetting.

#### What I'll do

Note: I will continue to serve on the Nix team regardless of serving on
the steering committee.

The agenda I want for Nix community writ large is intertwined with the
projects I have been perusing myself --- this should come as no
surprise, why would I have a vision for one that is not also the visions
for the other? Serving on the steering committee would be a chance to
plan out some of the more big-picture architectural projects that are
intertwined with this, for example:

- If Nix and Hydra support content-addressed builds, how do we migrate
  Nixpkgs?
- If Nix supports Windows, how should Nixpkgs support Windows?
- How can we leverage low level Nix details (store layer, C API) to
  vastly improve the integration with language-specific package
  managers?
- How might projects like <https://github.com/nixos-bsd/nixbsd> be
  upstreamed into NixOS?
- In a world where there continues to exist multiple implementations
  (original Nix, TVix, Lix, new things like
  <https://github.com/256lights/zb> (?)) how can we maintain standards
  for interop while also fostering innovation?

Here are some things I believe

1.  **We have a lot of technical work to do.**

    We're quite good at "package management", but "package management"
    is, unfortunately, increasingly a problem that many people don't
    know they have or don't want to think about having. Likewise for
    being the best Linux distro. I am as proud of these things, and you
    all should be too, but as new people computing who do even know what
    "package management" or a "linux distro" are, and I get worried.

    What I want us to do in response to to this is get good at other
    things --- not pick up random misc features "to make a better
    product" (actually bloat and loose sight of goals), but ask: what is
    already in our wheelhouse and yet where we fall short?

    One answer is portability. It's great we do macOS in addition to
    Linux, but lots of popular especially user-facing software feels
    compelled to support Windows too. "Use Nix and go down to 2 ways of
    getting dependencies" just isn't nearly as compelling as "Use Nix
    for all platforms". And getting upstream projects to themselves use
    Nix for official development, official builds, etc. would do wonders
    for us, for right now Nixpkgs succeeds *despite* a lot of upstream
    project indifference.

    Another answer is incremental builds. By convention, we usually use
    Nix to build whole "packages". But what is a "package" anyways?
    Discarding conventions and just looking purely at what Nix does, it
    is a build system that can run build tasks as fine- or
    course-grained as we like. When we say "do nix-build that that will
    be slow if you change anything, or get in a Nix shell and run some
    other tool", we are again like in the portability example, getting
    part of the job done but not completing it. Running a single
    nix-build that is *both* completely self-contained *and*
    incremental is a much stronger, and simpler, value proposition.
    (<https://blog.williammanley.net/2020/05/25/unlock-software-freedom-one-by-using-better-tools.html>
    by the way is a good write-up of the completely self-contained and
    incremental vision.)

    To me, it's absolutely essential that we nail both these use-cases
    to stay on the cutting edge going forward. We have to run everywhere
    to credibly pitch ourselves as a one-stop bootstrapping "solution".
    We have to have low-latency incremental builds to pitch ourselves as
    a first-rate developer tool. This is why I started on the Windows
    port, and why I started work on dynamic derivations and
    content-address derivations. And now I will need the communities
    help finishing those projects and rolling them out ecosystem-side.

    A third challenge in this vein is better integration with
    language-specific tooling, in a way that Nixpkgs can also dogfood.
    But I've written enough and so won't elaborate on this for now.

    A lot ink is spilled about the learning curve of Nix, and while that
    is important, I more concerned where Nix falls short even for
    experts. If we nail all these use-cases on a technical level, the
    "juice will be more worth the squeeze", and then we will be better
    positioned to figure out our onboarding issues. Indeed, thinking at
    a higher level of abstraction (e.g. "run me the LSP for this
    project" instead of "get me a bash-running shell") should help with
    both doing what people actually want from us and ease of use. It's
    when we sink into being more unstructured "shell script glue" that
    we fail at both satisfying end goals and having a good learning
    journey.

2.  **The Nix community will become more decentralized as different
    sub-groups head off in different directions.**

    This was something I was telling my Nix Team members for ages, and
    then the events of the past year (in perhaps a less cheery way than
    I hoped) really started to bare it out.

    My prescription for this was always more, and better, layering, and
    I stand by that. Having a store vs language vs flakes separation in
    Nix's implementation is good, because it is conceptually clearer
    internally and externally, and it allows different groups to take
    what they like and discard the rest, without discarding more than
    they need to. We've done a lot of this with Nix, and new initiatives
    like the C API will allow us to do more above Nix. For example, we
    should have a Nixpkgs CLI that maintains and leverages extra
    structure in Nixpkgs beyond what Nix should know about. That would,
    incidentally, help a lot with the learning journey too.

    That said, even as layering allows surgical reuse of just the right
    parts, there will also be room for reimplementations of those parts,
    and that will be good to ensure we never "overfit" to any one
    implementation, and its design accidents. Standardization is the
    complement to layering here, ensuring we have
    implementation-agnostic specifications and conformance testsuites,
    allowing new implementations to quickly and easily know whether they
    are correct and complete, and ensuring we can easily swap them
    out.

This is my vision. I can and will work on may parts of it myself, but
it's far to much for one person to get done. On the steering committee,
I would work with others to arrive at a shared vision, and then muster
the resources to get it done.

(See also what I wrote for my constitutional assembly application
<https://nixpkgs.zulipchat.com/#narrow/stream/436732-Constitutional-assembly-applications/topic/John.20Ericson.20.2F.20Ericson2314>.)
## Q&A

## Unanswered questions
<details>
<summary>Should Nix transition away from GitHub to a self-hosted git forge? (<a href="https://github.com/NixOS/SC-election-2024/issues/18">link</a>)</summary>

Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?
</details>
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
<summary>Which candidates would you like to work with on the Steering Committee? (<a href="https://github.com/NixOS/SC-election-2024/issues/101">link</a>)</summary>

If elected to the Steering Committee, which other candidates would you prefer to work with, and why?
</details>
<details>
<summary>Securing contribution possibilities (<a href="https://github.com/NixOS/SC-election-2024/issues/118">link</a>)</summary>

What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?
</details>
