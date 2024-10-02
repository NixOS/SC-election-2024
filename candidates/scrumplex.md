- Name: Sefa Eyeoglu
- GitHub handle: Scrumplex
- Email address: contact@scrumplex.net
- Discourse handle: Scrumplex
- Matrix handle: @Scrumplex:duckhub.io

### Conflict of interest disclosure

Most of the work I have done in the Nix community has been for personal
use. My employer does not promote the use of Nix (yet), though my team
and I do use Nix in a limited capacity. I am working at Deutsche
Telekom IT GmbH, a subsidiary of Deutsche Telekom AG.

### Motivation to be on the Steering Committee

I use Nix, Nixpkgs and NixOS every day, both personally and
professionally. As a regular Nixpkgs contributor, I want our community
to be happy with the decisions the foundation takes, so I decided to
apply as a candidate to the Steering Committee.

#### What I have done

Prior involvement in governance of FOSS projects:

- (Former) maintainer and community manager of the Prism Launcher
project [[prismlauncher]]
    - I was one of the core maintainers of the PolyMC project, a FOSS
Minecraft launcher. Early on, I have introduced the Contributor
Covenant code of conduct into the project, despite the resistance of a
maintainer and a former maintainer. Additionally, I have set up
transparent and sustainable funding using Open Collective and Open
Source Collective. There were some disagreements between one of the
maintainers and the rest of the team in October 2022 which caused a
takeover of the project by that one maintainer and the exclusion of the
remaining maintainer team. This led to the creation of a fork called
Prism Launcher. I have played an instrumental role in creating the
community around Prism Launcher and remain in the maintainer team to
this day. Since then, we have had many new maintainers as well as
several maintainers who have stepped down as they lost interest. While
I take a mostly passive role development-wise nowadays, most
operational tasks are usually done by me. [[gol-prism]] [[pcgamer-prism]]

- Applied as a specialised contributor in the NixOS Foundation
constitutional assembly [[nca-application]]

Ecosystem Contributions:

- Nixpkgs: 147 merged, 12 open [[nixpkgs-merged]][[nixpkgs-open]]
  - pnpm.fetchDeps - Tooling for Node.js packages that use pnpm
[[nixpkgs-pnpm]]
  - nixos/monado: NixOS module for enabling and configuring Monado, a
FOSS OpenXR runtime [[nixpkgs-monado]]
  - discord: add option to install Vencord [[nixpkgs-vencord]]
- Home Manager: 12 merged, which include several new modules
- [nix-community/nixpkgs-xr][nixpkgs-xr] Automated nightly packages for
several AR/VR/XR tools and applications

#### What I'll do

- Implement a Nix Ecosystem Incubation program akin to CNCF's
incubation program
  - Currently, the Nix ecosystem is quite scattered. While there is
nix-community that serves as an inofficial incubator, there is no clear
process for promoting these into Nixpkgs/NixOS.
- Make extending and reusing tooling of Nixpkgs easier
  - Many community projects have to write their own boilerplate code
just to expose a package set to users. Tooling like the `by-name-
overlay.nix` is not officially exposed an API in Nixpkgs, even though
it would be very useful for downstream Flakes/expression repositories. 
  - By reusing tooling from Nixpkgs, it will be easier to incubate and
eventually upstream these community projects into NixOS/Nixpkgs
- Implement transparent decision-making
  - NixOS should be governed with oversight from the community. The
foundation board as well as Steering Committee (SC) members should be
held accountable for their decisions. To facilitate that, all major
decisions should be made in a highly visible manner. This can be
achieved by making communication channels of the SC publicly viewable.
  - The SC should actively gather community feedback for upcoming
decisions.
- Implement a mentorship system to help regular contributors become
maintainers

[gol-prism]:
https://www.gamingonlinux.com/2022/10/if-you-use-polymc-for-minecraft-you-should-switch-away-now/
[pcgamer-prism]:
https://www.pcgamer.com/minecraft-launcher-project-spins-out-of-control-after-dev-hijacks-it-to-fight-leftist-queer-ideology/
[hm-merged]:
https://github.com/nix-community/home-manager/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3AScrumplex+is%3Amerged
[hm-open]:
https://github.com/nix-community/home-manager/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aopen+author%3AScrumplex
[nca-application]:
https://nixpkgs.zulipchat.com/#narrow/stream/436732-Constitutional-assembly-applications/topic/Sefa.20.2F.20Scrumplex
[nixpkgs-merged]:
https://github.com/NixOS/nixpkgs/pulls?q=sort%3Aupdated-desc+is%3Apr+author%3AScrumplex+is%3Amerged
[nixpkgs-monado]: https://github.com/NixOS/nixpkgs/pull/245005
[nixpkgs-open]:
https://github.com/NixOS/nixpkgs/pulls?q=sort%3Aupdated-desc+is%3Apr+is%3Aopen+author%3AScrumplex
[nixpkgs-pnpm]: https://github.com/NixOS/nixpkgs/pull/290715
[nixpkgs-vencord]: https://github.com/NixOS/nixpkgs/pull/229173
[nixpkgs-xr]: https://github.com/nix-community/nixpkgs-xr
[prismlauncher]: https://github.com/PrismLauncher/PrismLauncher
