- Name: Franz Pletz
- GitHub handle: fpletz
- Email address: fpletz@fnordicwalking.de
- Discourse handle: fpletz
- Matrix handle: @fpletz:lodere.es

### Conflict of interest disclosure

I am currently neither employed by an organization using Nix nor am I
getting paid for work on projects related to Nix.

### Motivation to be on the Steering Committee

#### What I have done

I have been using and contributing to NixOS since 2014. I served as
NixOS Release Manager for 17.09 and 18.03. I was a member of the NixOS
Security Team since its inception in 2017 until 2022. Before 2020, I
have been maintaining quite a lot of nixpkgs components like the nginx
module and its ACME integration, the Gitlab module, some core packages
like systemd and have been doing big migrations like default GCC
version bumps and added the integration of compiler hardening flags.
I've been taking part in organizing local NixOS meetups, some NixCons
and held some talks & workshops promoting NixOS in different settings
and conferences.

I haven't been very active from 2020 until the end of of 2023 and
haven't taken part in the discussions of the recent dramas. The only
exception is that I have signed the open letter "NixOS Users Against
MIC Sponsorship" and still stand by my decision.

#### What I'll do

One of my main gripes with NixOS was the difficulty of reaching
decisions and consensus because we didn't have working processes in
place. Big PRs or PRs that touch core components without the support of
a committer still tend to linger open very a very long time. I believe
the main reason is that most committers are unsure about the amount of
feedback needed to merge such PRs. While the RFC process has improved
this, I think we can improve the situation and reduce the number of
open PRs and lingering draft RFCs. In my opinion, the steering
committee with only a few trusted community members that can reach
decision quickly and has the power to support or cancel initiatives
not fitting our project direction early is good for both contributors
and the community at large.

The main thing I want to solve in my tenure is the cache hosting
problem. I believe that we don't have to hang onto all cache contents
apart from previous stable NixOS releases and self-hosting the cache by
using the resources of multiple sponsors is more cost-effective and
reliable than relying on the services of a single cloud provider. My
goal is to help transform our cache monoculture to a mirror system that
is more comparable to other community-driven operating systems like
Debian.
