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
