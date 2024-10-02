- Name: Winter
- GitHub handle: [winterqt](https://github.com/winterqt)
- Email address: `"nixos@" + name + ".cafe"`
- Discourse handle: [winter](https://discourse.nixos.org/u/winter)
- Matrix handle: `@winter:catgirl.cloud`

### Conflict of interest disclosure

I'm an employee of [OrbStack](https://orbstack.dev), a company that develops a product with a paid feature that utilizes Nix(pkgs).

### Motivation to be on the Steering Committee

#### What I have done

##### Technical

- I've been a Nixpkgs maintainer [since 2021](https://github.com/NixOS/nixpkgs/pull/111690), and a Nixpkgs committer [since 2022](https://github.com/NixOS/nixpkgs/issues/50105#issuecomment-1174474112).
- I wrote/maintain [`buildNpmPackage` and the associated "next generation" of npm/Node.js build tooling](https://github.com/NixOS/nixpkgs/pull/189539).
- I [maintain the Rust build tooling](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Awinterqt+label%3A%226.topic%3A+rust%22+).
- [142 PRs created](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+author%3Awinterqt), [560 PRs reviewed](https://github.com/NixOS/nixpkgs/pulls?q=is%3Apr+reviewed-by%3Awinterqt+).

##### Community

- I frequently help people on [Discourse](https://discourse.nixos.org/u/winter) and Matrix. (I mainly help users on Discourse, and fellow Nixpkgs maintainers on Matrix.)
- I've created [one RFC](https://github.com/NixOS/rfcs/pull/131), which ultimately failed to gain a suitable number of shepherds. However, its opening has had a noticeable impact on Nixpkgs as a whole, leading lots of packages to be gradually converted to using SRI hashes even in the abscence of a formal guideline.

#### What I'll do

*These are my personal "campaign goals." Note that these are just things I am passionate about and want to start having conversations about -- these **are not** guarantees.*

- **Consistency, consistency, consistency**: Lots of "standards," review comments, and nits do not follow any sort of consistency. I frequently see contributors and maintainers complaining about how inconsistent our review process is. While this is not an issue that can be just solved with an RFC or two, I hope to make headway in creating comprehensive contributing guidelines that reviewers can point to for contentious issues.
- **More automated checks and enforcement of technical standards for Nixpkgs changes**: While `nixpkgs-vet` and our other CI checks are a great start, I think we need to have an extensible framework and process to create new lints, going off the above.
- **Make it easier to feel heard about issues**: As someone who has tried to push for change in both technical and community-related capacities (e.g. as RFCs, or as pleas to the few with power within our fragmented organization), I frequently feel like the processes for some changes have a very high barrier for entry, or just don't work at all. As a member of the SC, I'll work to make it easier for people to voice their concerns and propose changes, hopefully without indefinitely devolving into bikeshedding.

#### Why should you vote for me?

I believe that, as of 2024, Nixpkgs/NixOS is *the* best way to deploy development environments, servers, and any other sort of software configuration. In light of these recent governance issues, I have evaluated other options, and I've come to the conclusion that no other solution comes close to what we've achieved as a community. (Not even Guix!)

I want to try one last time to make a difference in a community that I've loved being involved in for the past (almost) four years. As briefly mentioned before, I've poured lots of energy into trying to fix various issues, to the point where it completely burned me out from interacting with the project. I believe that, if this governance model succeeds (and I think it has a good chance of doing so), that we can make the state of affairs better than they've ever been.