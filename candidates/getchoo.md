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

