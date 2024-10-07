- Name: Martin Schwaighofer
- GitHub handle: mschwaig
- Email address: mschwaig@eml.cc
- Discourse handle (optional):
- Matrix handle (optional): @mschwaig:matrix.org

### Conflict of interest disclosure

I work for Johannes Kepler University Linz, in Austria.

### Motivation to be on the Steering Committee

#### What I have done

I have based the research for my in-progress PhD on Nix,
spent a lot of time trying to understand its security properties,
and finally published my first scientific paper about that.

#### What I'll do

On technical topics

I will support decisions that make Nix a more user-friendly and secure tool.
* The intended user experience should be clear and guided, instead of showering users with information and choices.
* Official documentation and installer should use Flakes and the new CLI, even while they remain unstable.

Take a look at my paper for the technical direction I am in favor of:
<https://cloud.ins.jku.at/index.php/s/txgoHps6FyNpiDk>

On collaboration and social issues

I will protect and support actions to include minorities.
This includes providing reasonably safe official spaces for most of the community to interact, but not overreaching.
For example:
1. Official spaces should not accommodate problematic behavior, because that would be overreach, but
2. unofficial spaces may choose to give groups with different sensibilities somewhere else to go, which is a good thing, since trying to moderate every space the same way would be overreach as well.
3. Contributors who are banned should not lose their ability to vote in an election.
4. No military sponsorships, but respectful treatment of community members' personal choices, like working for a military contractor.
## Q&A

### Should Nix transition away from GitHub to a self-hosted git forge? ([link](https://github.com/NixOS/SC-election-2024/issues/18))


Do you believe Nix should move away from GitHub and instead host its independent Git forge? If so, what are the benefits and challenges of such a transition, and how would you approach this shift if it were to happen?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/18#issuecomment-2379742325">link</a>)</summary>

No, I don't think we should move away from GitHub. It sounds like a quite a disruptive change which takes a lot of effort to implement, to gain some things and loose some things. Let's keep our eyes and ears open instead. I would be in favor of putting some willing enthusiasts in charge of making a 'just in case' plan to move somewhere else instead.
</details>

### What is your stance on sponsorships in the Nix community? ([link](https://github.com/NixOS/SC-election-2024/issues/17))


What is your stance on sponsorships within the Nix community, particularly in light of the controversy surrounding military-industrial companies? How do you believe such sponsorships should be handled, and what steps would you take to avoid aligning Nix with companies that may conflict with the community’s ethical values? Are you in favor of [merging this pr?](https://github.com/NixOS/foundation/pull/140)(yes or no answers only for this specific question, please).


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/17#issuecomment-2379716844">link</a>)</summary>

Yes. I am in favor of excluding 'Companies that are heavily or primarily involved in military, defense, intelligence or weapons manufacturing' from sponsorships.

Sponsorship is a form of public association, so we should think about if our sponsors are broadly acceptable to the community. 

At the same time I do think that sponsorship opportunities from sectors other than the military would not be nearly as controversial, so I do not think we should exclude other industries preemptively based on similar rules, but leave some of the power and responsibility for picking broadly acceptable sponsors at the level of the selection committee of the event.

I also think that it is important to stress that anyone working in the 'military, defense, intelligence or weapons manufacturing' is and should still be welcome in our community as an contributor, who is free to make their own personal choices, like working in these industries.
</details>

### What are your thoughts about flake stabilization? ([link](https://github.com/NixOS/SC-election-2024/issues/112))


Today, at least me, suggest everyone coming to Nix to take a look on flakes, but everyone eventually has to deal with the showstopper to enable nix-command and flakes as an experimental feature.

The last nix-command breakage, at least the last one I noticed, was the one to update specific inputs that changed a little.

What are your thoughs about the road to remove these feature flags so it is enabled by default?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/112#issuecomment-2391449371">link</a>)</summary>

I am in favor of making the `flakes` and `nix-command` experimental features the default experience for users soon, and then stabilizing them afterwards.

I think because the old CLI was so stable, we are very attached to the idea of getting everything about the new CLI and flakes totally right from the start. To the point where we are sitting on these things for 4 and a half years now, which creates a whole bunch of other issues and uncertainties in the ecosystem.

There is a wide range of things we can do to make sure users have a good experience between the extremes of
* 'every CLI command should still work the same way in a couple of decades' and
* 'we abandoned it or made extensive changes to the design, and now all the flakes you wrote are useless'

So we should ask ourselves not only
* how can we stabilize flakes and the CLI over time?, but also
* how can we make those features available to users as the default user experience in months, not years?, and
* how can we do it in a forward-looking way that makes subsequent stabilization not that painful in practice?
</details>

### Should Nix Have a Home Management System? ([link](https://github.com/NixOS/SC-election-2024/issues/83))


Do you support the development and integration of a native home management system into Nix (similar to `Guix Home`)? If so, how do you envision this system improving the overall user experience and system management, particularly in terms of configurability, security, and ease of use? What challenges do you foresee in implementing such a system, and how would you address them?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/83#issuecomment-2380297789">link</a>)</summary>

There is https://github.com/nix-community/home-manager that fills this role.

Using home-manager is one of the easiest, lowest-risk ways for people to get started with using Nix to manage part of their system declaratively, so it's something I like to point new users towards.
Personally, for the benefit of those new users I think it would be nice if the project name included ´nix´ or the project was part of nixpkgs, but those thoughts should lead to asking people questions, they are not a good basis to make a decision like that.

People have been discussing the possibility of [merging home-manager  into nixpkgs recently](https://discourse.nixos.org/t/brainstorm-for-rfc-assimilate-home-manager-into-nixpkgs-monorepo/48230). Something like this should only be done if the maintainers of the home-manager project are in favor of it, and enough people on the nixpkgs side are confident that it is also the right thing to do for nixpkgs.

If you are asking about the creation of some new home management system, there is an RFC about such an effort, and I agree with the following comment on it:  https://github.com/NixOS/rfcs/pull/182#issuecomment-2366848659. 
Another home management system that can only come from the community and not be blessed in advance by the SC or developed in nixpkgs. It would have to get started outside of nixpkgs for practical reasons anyways, where it does not matter what the SC thinks.
</details>

### How strongly do you align with Copyleft and FLOSS principles? ([link](https://github.com/NixOS/SC-election-2024/issues/28))


How strongly do you align with copyleft and FLOSS (Free and Libre Open-Source Software) ideas/ethos? What are the key principles of these movements in your view, and how would you advocate for them in your role within the Nix community? I'm particularly interested in supporting candidates who share a strong commitment to these values.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/28#issuecomment-2379885502">link</a>)</summary>

I am a strong advocate for open source software.
I don't think copyleft licenses are morally superior to other open source licenses.
I think the choice of the license depends on the nature of the particular project, and personal preference.
Any developer should be free to make that choice as they please.

I also believe that not only individuals, but also corporations should be able to participate in open source ecosystems.
I realize that this is often difficult, but it is one way people may choose to organize and get paid for their open source work, which I view as a good thing.

Nixpkgs should continue to not prevent users from using non-free software.
</details>

### Should Nix self-host the binary cache? ([link](https://github.com/NixOS/SC-election-2024/issues/19))


Do you believe that Nix should transition to self-hosting the binary cache on bare-metal hardware, rather than relying on third-party services for hosting its cache?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2379775428">link</a>)</summary>

Long term, I think it makes sense to invest in a peer-to-peer system to distribute traffic and storage, since that fits really well with how Nix works conceptually. In that context wanting one copy of the data on site somewhere makes sense to me. That also makes it easier to distribute the financial burden of hosting the cache.

Before that, in the short term, it's primarily a matter of cost and risk to me.
People calculated various options, for example on discourse.
We should look at those and pick one of them, which has a realistic plan for getting it done and gets us to a good place for a few years.
</details>

### Should `nix-community` fall under formal governance? ([link](https://github.com/NixOS/SC-election-2024/issues/11))


Do you believe that the nix-community should be managed under the formal governance? If so, how would you propose integrating community management with governance?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/11#issuecomment-2379654635">link</a>)</summary>

I'm assuming you mean https://github.com/nix-community.

I think as a matter of priority we should only think about managing `nix-community`, if there are specific issues that need handling. I am not aware of any such issues. Even if there are issues, we should ask the people leading nix-community, and the relevant projects what they think.
</details>

### Opinions about scaling down nixpkgs ([link](https://github.com/NixOS/SC-election-2024/issues/98))


Do you think we should scale down nixpkgs or other Nix projects, for example fewer packages, modules, or anything that has maintenance costs? What would be your plan of action?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/98#issuecomment-2396267785">link</a>)</summary>

People in the community create packages and modules mostly based on their own needs, so I think people are going to continue to maintain our modules and packages on that basis, and I don't think trying to narrow our scope on those things will help us much.

I think maybe spinning out specific language ecosystems, so that they can be still accessed through nixpkgs, but do not have to all live in the same repository might make sense, to enable more specialized workflows and innovation in language-specific packaging, but do not know how we should do this.

I agree with @tomberek that establishing a nixpkgs team would be a good idea.
</details>

### What is your vision for the future technical direction of Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/50))


What is your vision for the future technical direction of Nix projects? What specific improvements or innovations do you believe should be prioritized to advance projects under Nix and address current challenges?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/50#issuecomment-2380711035">link</a>)</summary>

I am a researcher who is focused on supply chain security, and I see a lot of opportunities for Nix in that area.
You can find some of my views on that in this recent paper: https://cloud.ins.jku.at/index.php/s/txgoHps6FyNpiDk

But this is by no means the only technical topic and direction that I think is important.

I think in the Nix ecosystem we are really good at producing working prototypes for good technical ideas, but we are not as good at doing the work to polish them and make them the default user experience.
When I say this I'm thinking of the efforts around Trustix, IPFS, and Flakes.

I think we need to get better at finding good ways to integrate the results of those efforts, and deciding to make them part of the default user experience (or not).
I think this is where the SC can help, by giving direction and permission to existing efforts.

@Gabriella439 pointed out how unopinionated the manuals are, and  I agree. I think direction by the SC could help there too.
For example, in my opinion, we should hide the commands for imperative package managment (with `nix-env`) in some dark corner of the manuals, not put them front and center.
</details>

### What constitutional changes would you advocate for and why? ([link](https://github.com/NixOS/SC-election-2024/issues/35))


If you had the opportunity to amend the constitution, what specific changes would you propose, and why do you believe these changes are necessary?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/35#issuecomment-2380995466">link</a>)</summary>

I don't think that someone who has been banned should be excluded from voting, and if  I am elected I will try to convince the other members of the SC of my opinion on the manner, to see if we can change this.

My argument is, that I would want the SC to represent the opinions of everyone with a certain personal investment in the Nix community. I think banning people from voting feeds a certain us versus them mentality, which I think we should not feed.

Someone might be banned, because the way they talk is unacceptable.
Still, I would prefer to be able to refer those few people towards a productive process, where they can vote their opinion, maybe against my own particular interests, than turning them into the oppressed outsider.
Some people would rather be the oppressed outsider, because that's just another way to stir up drama an division.

I don't know about the practical considerations around bans and GitHub that went into this rule as is is now, though.
</details>

### What kind of relationship should unofficial spaces (Reddit, Discord) have to the community and Foundation? ([link](https://github.com/NixOS/SC-election-2024/issues/34))


What kind of relationship should unofficial spaces (Reddit, Discord) have to the community? Should they be linked on the homepage? If so, should they be compelled to comply with the Foundation's code of conduct? Should we attempt to convert these communities into official spaces (if so, at what point)?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/34#issuecomment-2379812650">link</a>)</summary>

Unofficial spaces should remain unofficial for now, the code of conduct should therefore of course not apply to them, as a consequence I think they should probably not be linked on the official website, but I am not sure.

We should not force all official spaces into the same mold we use for official spaces, they should be able to keep and evolve their own rules and culture. Of course if they want to start applying the code of conduct, that's good, but we should not force them to go that route, it's up for them to decide. Maybe some unofficial spaces will want to become official at some point, which the SC can look into.

The official spaces should feel practically safe for everyone in the community, but some members of the community might feel more at home in unofficial spaces that are more ore less protected than the official ones, which is fine too.

(I am using the words 'practically safe', because with such a large and diverse community, we have to expect that others might not share our exact values or world view, and if this is what you need to feel safe yourself, or need to impose on other members of the community, that's not OK. We cannot accommodate that in official spaces. What we need in official spaces is a working basis for respectful communication.

Toxic and abusive behavior has many faces, sometimes it takes the form of feeling victimized or playing the victim, so we cannot assume that everyone who complains loudly for moderators to get involved was actually wronged. At the same time I think frequent mild moderation actions can help us encourage respectful, productive conversations, before we take more drastic measures.)
</details>

### How will you ensure the safety, inclusion, and voice of minorities in the Nix Community? ([link](https://github.com/NixOS/SC-election-2024/issues/7))


What specific measures will you advocate for and implement to ensure the safety and inclusion of minorities in the Nix community, and how will you ensure that their voices are actively heard and considered in the decision-making process?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2379616089">link</a>)</summary>

Somebody posted an essay on Zulip, which I really like, about _The Tyranny of Structurelessness_.

Having a community without a power structure is impossible, because if here is no official one then there will be an unofficial one based on social capital. The problem with an unofficial power structure is that those in power can easily evade responsibility, by denying that they have any power.

The SC should put people in charge of things, including both power and responsibility.
That way if there is an issue, someone is in charge of handling it, or it can be escalated up, and there can be consequences, including for the SC.

To me this is the most important and impactful thing we can do for those without power, including minorities.
</details>

### What's the best way for the steering committee to deal with inaction or being ignored? ([link](https://github.com/NixOS/SC-election-2024/issues/114))


One of the main ways in which the previous Nix governance has been criticized is for ignoring or being inactive in the face of community protests and concerns.[^1]

[^1]: I'm not interested in rehashing or re-litigating these specific cases or people involved; please do not do so in your answer.

Let's suppose that the steering committee is now responsive to the community... but when the steering committee asks for or directs action, that request is **ignored**, **de-prioritized**, or **litigated** by the relevant parties.

How would you as a single SC member deal with this? How would you ask for your fellow steering committee members to act as a group?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/114#issuecomment-2391945040">link</a>)</summary>

I think at first, as a single member of the SC, what you can do is basically talk to various parties in an effort to move forward on issues. You don' t have any real authority by yourself, and you should not act like it.

Any actual business of the SC, which the constitution places under the authority of the SC, would be decided with a vote.
So if conversations with the parties in question do not lead anywhere, this would lead to a discussion within the SC.
As a result of the discussion, some official action(s) the SC wants to take on the matter would be proposed, and voted on.

If any party does not take the decisions that come out of this process seriously,
* the first measure would probably be reaching out and having a friendly conversation with them about taking the SC seriously, and prioritizing accordingly. We should make sure to a reasonably degree that this is not a misunderstanding.
* If that does not work, we effectively have to give them some appropriate thinking time, while threatening a specific consequence, in the worst case to remove them from their position.
* If that does not work, we would have take a vote to remove or replace them. If this happens really high up in the hierarchy, and
* none of the people who would have the power to enact our decision do so, I think there is not much left to do for the SC besides resigning. The SC is meant to have specific powers, if it does not have those powers in practice, you don't really have an SC, and you would do the community a disservice to continue under false pretenses.

The SC is elected to act in the interest of the community. Playing issues that are raised by the community back to the community, in order to get an exact temperature reading, if 49 % or 51 % of the community are for or against the exact thing you are trying to do would be the wrong approach. Riling up the community and escalating things towards the community, would also be exactly the wrong way to go.

The SC should generally act in a way that it assumes has broad community support, but when there are tough decisions to make, the SC has to make those tough decisions as well. If we do not make decisions at all, simply because they are difficult, life tends to make them for us.
</details>

### Do you believe that one of the core principles of NixOS is its declarative approach?  ([link](https://github.com/NixOS/SC-election-2024/issues/9))


If so, should NixOS strive to further minimize state and enhance its declarativity in the future? 

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/9#issuecomment-2379644119">link</a>)</summary>

Yes.

> If so, should NixOS strive to further minimize state and enhance its declarativity in the future?

I think this is one of the technical issues, where the steering board should act like gardeners and not like an architects, and only if it's necessary.

I think specific proposals about this kind of thing should arise in and gain support from the community first, and not come from or be blessed by the SC.
</details>

### What are your thoughts on adding analytics or crash/error reporting to `nix`? ([link](https://github.com/NixOS/SC-election-2024/issues/122))


Question https://github.com/NixOS/SC-election-2024/issues/109 by @iFreilicht brought up this topic, and I thought it was worth discussing on its own, because it is quite a nuanced topic. On one hand it has a lot of privacy implications, on the other hand some specific data might be valuable for improving Nix.

Do you think this could be beneficial?
If so, what data could you imagine being helpful to the project?
Do you think it could be implemented in a way that is broadly supported in the community?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/122#issuecomment-2396540081">link</a>)</summary>

I think it could be beneficial, and I think theoretically it could be done well. Looking at other candidates answers, I do not think it would be broadly supported by the community. We should probably focus on understanding usage and issues in other ways. We could for example amend the community survey.

I think as a member of the Nix team, @roberth saying that this is not worth it carries a lot of weight.
</details>

### What are your thoughs about eventually merging core with Guix? ([link](https://github.com/NixOS/SC-election-2024/issues/116))


Guix and Nix have a lot in common. Both have a base dir store (/{gnu,nix}/store), both have those drv files that basically run a command with args and env vars in a restricted environment.

It seems natural, at least for me, that in some way both can have a common project and basically a different stdenv and abstractions over it. Maybe the daemon and store parts could be shared and each project would only have it's own evaluator and nixpkgs and users could use Guix to use the same infrastructure Nix would use to build and remote build stuff.

What are your thoughs about eventually uniting this core in a common project?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/116#issuecomment-2392044761">link</a>)</summary>

As you are probably aware, Guix got started as a fork of Nix.
I think Guix and Nix can still share the same store. Not breaking that kind of compatibility needlessly, I think is a good goal. Exchanging ideas and talking to each other is a good idea.

But to make it a priority to preserve this status quo or try to get rid of discrepancies that were introduced over time, in an effort to eventually merge the two projects again, is not a good or realistic goal. Both projects came up with good ideas after the split, and are still pursuing good ideas, which is simply more important than keeping the two projects in line with each other.

The shared technical primitives underlying both projects are quite fundamental, so maybe eventually we will be able to abstract away the differences and move closer together again that way, even if we are increasingly diverging right now.
</details>

### What are your thoughs about bringing Grafts to Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/115))


Grafts are a way from Guix to bring fixes to packages that a lot of other packages depend on without having to rebuild the world basically.

What are your thoughs about bringing a equivalent feature to Nix?

[1] https://guix.gnu.org/blog/2020/grafts-continued/

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/115#issuecomment-2396368580">link</a>)</summary>

As others have pointed out, we have functions with similar but not the same semantics, and these kind of mechanisms are useful, but also a bit hacky. It's definitively a topic where we should look at all the options.

One option to consider is more cleanly separating build-time and runtime-dependencies, as suggested here: https://github.com/NixOS/nix/issues/1080.

PS: I am a big fan of the [Build Systems à la Carte](https://www.microsoft.com/en-us/research/uploads/prod/2018/03/build-systems.pdf) paper linked in that article you posted as well.
</details>

### Experience ([link](https://github.com/NixOS/SC-election-2024/issues/104))


What experience do you have with being responsible for making headline decisions about software used and depended upon by thousands of people? How many years have you held (or did you hold) that (or those) position(s) of responsibility?

(‘Depended upon’ is an important part of this question; a computer game might be played by thousands but of course that's nowhere near the same level of responsibility as making decisions about the Nix projects.)

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/104#issuecomment-2386810767">link</a>)</summary>

At my previous job my main responsibility was securing a mobile payment app, which is used by quite a lot of banks in Austria and a few other customers in Europe.

* People would rely on our app to make payments at point of sale terminal and withdraw money from ATMs. This had to work worldwide and with some deliberate limitations offline. People trust our app, and some leave their cash and plastic cards at home. They would have a really bad time if that app did not work reliably.
* At the same time our solution needed to be secure to a high standard, to manage the risk of hackers being able to make fraudulent transactions.
* We had to pass regular external penetration tests, which I was the technical contact for. I also coordinated the efforts involved in fixing identified issues and generally communicated with a wide variety of stakeholders.
* My work involved following a lot standards, both open and proprietary, but also creating our own security concepts. These often did not make tradeoffs between security and good user experience, but combined them synergistically, by taking advantage of new hardware capabilities, through new platform APIs. 

I had originally joined this company as a software developer, then spent some time abroad, and later came back and spent three years focused on security in different roles, leading a small project team for some of it.

Among other things, this taught me about
* the balance between sticking to a long term plan with a steady hand and reacting to change,
* the value of clear and deliberate communication, and
* how much two people's roles and responsibilities can shape that communication.

At the tail end of that experience in 2020 I both discovered Nix, and wanted to make some changes in my life, so I decided to pursue a PhD.
This gave me a lot of time to really dig into Nix and its applications to (supply chain) security, especially proving the relationship between some running system or some binary, and the source code it was produced from.

While I enjoy this work and will present some of its outcomes at NixCon, I miss the extensive collaboration, variety, external responsibility, and immediate impact that was more present in my previous job.
Joining the SC is a big opportunity for me, because it brings a lot of what I'm missing into my life, in a way that complements what I have been doing out of passion for the last 4 years already very well.
</details>

### How do you plan on making community projects official? ([link](https://github.com/NixOS/SC-election-2024/issues/99))


What procedure would you implement to make community projects official? What benefits would those projects get once they are?

Related to #89

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/99#issuecomment-2396454983">link</a>)</summary>

Since you related your question to https://github.com/NixOS/SC-election-2024/issues/89 I am going to answer it from the 'ecosystem fragmentation' point of view.

For a lot of practical things people want to accomplish with Nix, and cutting-edge efforts like https://github.com/nix-community/lanzaboote and https://github.com/nix-community/trustix, users have to go out of their way to use them.
This increases friction for users, because it makes it more difficult for them to get to where they want to go.

Making projects official, to avoid fragmentation, then generally looks like taking steps towards including them in official repos and making them part of the default user experience. Those steps are roughly:
1) implementing them in a way that can actually be up-streamed
2) ironing out issues
3) merging them into official repos, so they can be enabled with a flag or experimental feature
4) enabling them by default

This is only a very rough outline, and the specifics will very much depend on the project and require a lot of communication. For some of these changes utilizing the RFC process might useful and necessary, but we have to make both the practical and formal process work well for each individual project.
</details>

### Actions on ecosystem fragmentation? ([link](https://github.com/NixOS/SC-election-2024/issues/89))


There's a perception that the NixOS ecosystem is becoming increasingly fragmented, whether due to governance disagreements, technical divergences, or experimentation with new approaches. Do you view this fragmentation as a significant issue for the project? If so, what strategies would you propose to address it and promote greater cohesion within the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/89#issuecomment-2383906491">link</a>)</summary>

Fragmentation because of novel or different technical ideas is great, because enables innovation and competition of ideas and approaches, which once an they are proven, helps us see the world differently. This is working well.

In some cases once issues have been ironed out somewhere out of tree, we might want to take those innovations in, as options, experimental features and maybe eventually as part of the default user experience.
I don't think we are particularly good at this, because that requires an overall direction and vision of where we want to go, and decisions in favor of one thing over another. These are absolutely things that the SC must provide at some stage.
Otherwise to users, the benefits of what we are trying to offer as an ecosystem, get lost in the complexity of picking the right experimental and out of tree pieces, and putting them together correctly.

The other driver of fragmentation, I think, is dissatisfaction due to social, interpersonal or project-management issues.
These issues and the rifts that they create hurt people on both sides of them, and can easily deepen or get out of hand, because burning bridges is easier than rebuilding them.
The SC formally delegating power and responsibility, and reacting to problems, should help address some of those issues.

It will also take a lot of effort from people on both sides of the issues, to find common ground, and find ways to work together constructively. Everyone will have to accept, that in such a large community, other people are going to see the world differently, a lot of miscommunication is going to happen, and sometimes decisions that need to be made are going to be made differently then they would have liked, personally.
</details>

### How will you help decrease the number of open PRs in Nixpkgs? ([link](https://github.com/NixOS/SC-election-2024/issues/84))


With the whole Wayland-protocols debate going on, one cannot skip the parallel to Nixpkgs. Some users have a good friend committer to have their PRs reviewed and merged. But the frustration even hits some committers that sometimes are caught self-merging.

Practical solutions to end the frustration would (and will) take the entire community participation. How can you, as a lead, help both to accommodate all the opinions and to speed the adoption of solutions, taking down the number while caring about the health (consider burnout) of those involved on applying those measures?


<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/84#issuecomment-2380334676">link</a>)</summary>

I think one productive way to make sure large parts of the community are involved in solving this issue, and to reduce the pressure on individual heroic reviewers, would be spending time and effort on designing incentives that give us the results we want.

For example:
There are just as many contributors waiting to get their changes merged, as their are open pull requests (well, except for the bots).
How can we incentivize those contributors into reviewing the PRs of others and do it diligently - in order to get their own PRs reviewed and merged faster?

For sure any such proposal would be controversial to some degree, and a lot of discussion will happen in the community and with the SC. In the end I see the role of the SC as taking responsibility for this kind of decision.
When there is a specific proposal on the table that people have worked out and analyzed, the SC can make the decision to try it.
</details>

### Bootstrappability and independence from binary sources ([link](https://github.com/NixOS/SC-election-2024/issues/119))


What's your stance towards reducing dependencies from binary sources and improving the bootstrappability of more packages with minimal binary downloads?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/119#issuecomment-2393584266">link</a>)</summary>

Relying less on binary sources is great for supply chain security, so I think moving into that direction is a good thing.

On the other hand I think these kinds of changes need to be made in a way where they do not introduce meaningful regressions. I see having both a source- and binary-derived version of the same package as a good option for packages that often see on of those options getting broken.

I would also appreciate work on the small set of 'bootstrapping' packages we use to bootstrap the rest of nixpkgs. This is one area where members of the Guix community have done a great job. What @t184256 presented about this topic at NixCon 2023 (https://www.youtube.com/watch?v=Gm8yrvbgY-Y) looked very interesting as well.

If we would manage to move to content addressed derivations at some point, that would make working on the bootstrapping process of nixpkgs much less disruptive. Then, as long as you end up with the same content hash at the end of your bootstrapping process, you can take advantage of the early-cutoff optimization and stop rebuilding at that point instead of having to rebuild the world.
</details>

### What are your thoughts on ca-derivations? ([link](https://github.com/NixOS/SC-election-2024/issues/111))


What are your thoughts on content addressed derivations? Could them eventually be stable to be enabled by default? Would they really reduce the storage and cache usage slope in a significative value?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/111#issuecomment-2391682524">link</a>)</summary>

> What are your thoughts on content addressed derivations?

I am a researcher who works on supply chain security, and I see content addressed derivations through that lens.

The practical goal of my recent research is to propose some ways to extend Nix, which make build outputs more trustworthy.

Input addressed derivations show up as one problem in this context, because if you consume an input addressed derivation from a cache, you need to trust the builder of that derivation with how it did dependency resolution.
This makes it so that you have to trust the builder to a larger extent than necessary.
It would be really difficult to give full context and a proper explanation of this issue here, but you can read about it in [my paper](https://cloud.ins.jku.at/index.php/s/txgoHps6FyNpiDk), the contents of which will also be presented in [this talk](https://talks.nixcon.org/nixcon-2024/talk/review/TNM8ZECJVFD9VR9FJ8UQHTN7TXYHZ9PL) at NixCon.

Switching to content addressed derivations is not the only way to fix this particular problem, we could also retrofit something onto input addressed derivations. And we would have to solve a few other things as well to see any benefits from this one.

In any case this needs to be solved on the level of the signatures (or alternatives like Trustix), which we use to communicate trust relationships.
I think there is still some work to do to ensure that the signatures used with content addressed derivations are as solid as I would like:
* We have to have to look at what relationships a signed derivation and signed realization actually represent, and
* make sure you only place trust in the correct parts of that.
* If you do any rewriting of outputs, which is not implemented, but was proposed in @edolstra's thesis, we would also have to make sure the rewriting is fully accounted for in terms of trust.

> Could them eventually be stable to be enabled by default?

I would like us to get there, and I think if we have an implementation that is really solid in terms of reliability, there will come a point in time where it should be the default.
Besides wanting the implementation to be suitable reliable, I would also want the first stable version of this feature to be implemented in a way where we no longer place trust in the builder for dependency resolution.

> Would they really reduce the storage and cache usage slope in a significative value?

I think this questions needs to be answered based on measurements, otherwise the actual impact is really difficult to judge. If and how rewriting is done would also play a significant role there for sure. There are a lot of other benefits to content addressed derivations, we just have to be confident that we got the design right.
</details>

### How can we improve UX? ([link](https://github.com/NixOS/SC-election-2024/issues/109))


We all have opinions on the Nix UX, but I think we can agree that it needs improving. I've noticed that in many discussions, we talk about "the user" and our assumptions for what they would expect or understand, without really knowing.

We have no user journeys, no personas, no analytics about how people are actually using Nix which makes good decisions difficult.

Should we focus more on UX than we currently are? What actions would you take to do so?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/109#issuecomment-2391900220">link</a>)</summary>

I think contributors incorporating user journeys and personas into how they are thinking about UX would be great, and the topic of analytics deserves its own question, which I will post and and link here (https://github.com/NixOS/SC-election-2024/issues/122).

Where I see Nix failing most significantly in terms of UX is demanding too much from new users, and making it easy for them to go down the wrong path. Quoting from my candidate form:
> The intended user experience should be clear and guided, instead of showering users with information and choices.

Let's look just at installation for example:
* pick between an installer or the familiar distribution repository
* pick between the Determinate Nix Installer or official installer
* pick between single- and multi-user installation
* decide if they want to use `flakes` and `nix-command`, or find out they are missing, and successfully enable them

I have seen people get stuck in this process, or coming out of it with something that's not working. I think people are also getting overwhelmed, confused or loosing confidence in us during this process, and walking away as a result.

What they wanted to do was probably give Nix a try, or build some project with a `flake.nix`, `default.nix` or `shell.nix` file, and not learn all of the fine details of the Nix installation process. We should try harder to not get in their way.
</details>

### How will you improve transparency and accountability in Nix governance? ([link](https://github.com/NixOS/SC-election-2024/issues/48))


What specific steps would you take to enhance transparency and accountability within the Nix governance structure? How would you ensure that decisions are made openly, and that community members have clear insight into the processes and outcomes?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/48#issuecomment-2380906224">link</a>)</summary>

When it comes to accountability, I think what I said about _the safety, inclusion, and voice of minorities_ in https://github.com/NixOS/SC-election-2024/issues/7#issuecomment-2379616089 applies to this question as well.

In terms of transparency, the meeting minutes for board meetings are published, so I think the SC should publish the decisions it made as well, in so far as that's practically possible. What exactly that will look like, I think we will have to see when we have an SC.
If someone raises the issue that some specific process outside the SC is not transparent, the person in charge (or ultimately we) would have to look at that and see what they can change about the process.
</details>

### What your thoughs about a NixOS-like thing for clusters? ([link](https://github.com/NixOS/SC-election-2024/issues/117))


A issue I see with NixOS is that NixOS servers treat machines as pets, which is often normal and desired, but limits the potential to use Nix in clusters or grids of machines. Yeah, there are ways like using NixOS as a platform to run some clustering software such as Nomad or Kubernetes but then you lose most of the cool stuff NixOS has. One can still build the stuff that will be run with Nix to OCI containers but would need to manage and define services using some form of YAML, or HCL. Nix already has stuff for incremental copying of artifacts using nix-copy-closure and binary caches but this is lost when you have to build a OCI container each time you iterate in a service to be run.

BTW systemd has already lots of primitives to be used for this. I think the biggest challenge here would be to unify networking between services. 

What are your thoughs, and vision, about this possible line of work?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/117#issuecomment-2391999884">link</a>)</summary>

I agree with @cafkafk, I also see this as an issue that is outside the scope of the steering committee.

Such deeply technical work can only be done in the community and not on the SC level, as the SC should focus on governance. The SC can start looking at things like this once they have already gained support in the community.

I'm happy to see people working on these kinds of issues, though.
</details>

### What are your thoughs about integrating distributed stores into Nix? ([link](https://github.com/NixOS/SC-election-2024/issues/113))


AFAIK the most well known implementation is ipfs-nix from Obsidian systems that aim to integrate IPFS into Nix.

I, at least in the current state, am a bit skeptical about how the adoption would be. A full bump of my system would pull 10s of GBs of small artifacts, and if you have ever downloaded the closure of LaTeX packages you realized that lots of small operations == slow. I tried myself to make a RFC around exposing IPFS-compatible hashes in a narinfo so users could alternatively use IPFS to download stuff from binary caches but I basically abandoned the idea because I, myself, didn't think it would make much sense. The process would be so slow + the overhead of having to have stuff both in the nix store and IPFS store. I would only use something like this if I wouldn't need to duplicate stuff.

What are your thoughts about these projects and initiatives?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/113#issuecomment-2396415861">link</a>)</summary>

I think it depends on what issue we are trying to solve.

If we want to speed up downloads and reduce bandwidth costs, that makes me look at bittorrent, which as been widely and successfully used for these purposes for a long time. So I have a strong feeling that on a technical level this should be very possible. We may not want to rely on if for small outputs and for determining cache hits, and we would have to analyze the security implications around some aspects of it. The gains could still be significant, especially when we think about local networks.

An actual distributed store, which we also rely on for persistent storage, I think is more difficult. IPFS may or may not be the right technical basis for this, based on how the protocols work, and how it is implemented today. I can see how the current implementation of IPFS leading us to store things twice is a huge issue.
</details>

### Financial support for maintainers ([link](https://github.com/NixOS/SC-election-2024/issues/108))


Many (though not all) contributors to and maintainers of the nix ecosystem are doing so as unpaid volunteer work next to their fulltime jobs. This is not sustainable, we either need more maintainers, or we need to lower the workload of the ones we have.

One way of doing this would be to sponsor them so they can switch to part-time positions or outright quit their jobs and work on Nix or nixpkgs full-time, potentially with money the foundation already receives in donations.

Would you be in favor of doing something like this? Why or why not?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/108#issuecomment-2396515836">link</a>)</summary>

The foundation has some money coming in (see https://discourse.nixos.org/t/nixos-foundation-financial-summary-a-transparent-look-into-2023/43640), but that money would simply not take us very far if we started paying contributors with it directly. In addition to the difficulties around fair allocation.

I believe that more open source contributors should have the option to get compensated for their work.
The work we are already doing as a community benefits not only individual community members, but also companies already.
Both the community and those companies would benefit, if we can come up with smart ways for them to spend money in the Nix ecosystem, in a way that creates more Nix jobs, more open source jobs, and improves the ecosystem for everyone.
Of course in practice all of this this is really hard to do, but I think it is one of the things we should discuss in the SC.
</details>

### What is your opinion on garbage collecting the cache ([link](https://github.com/NixOS/SC-election-2024/issues/96))


The cache is to big and it can't keep growing at the current rate. What is your opinion on how and what and if it should be garbage collected.

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/96#issuecomment-2396313531">link</a>)</summary>

I think it would be great if we could least keep everything that was ever merged into master.

I am not that worried about store paths that were only ever used in CI and staging and never merged into master. I think it would be fine to delete those, if we manage to identify them and it saves us a significant chunk of the storage costs.
I do think we should keep everything we ever fetched from the web, if possible though.

I hope that content addressed derivations and increased reproducibility, if we manage to keep track of that, could work in our favor to slow the rate of growth.
</details>

### How will you ensure the financial sustainability of Nix without compromising its values? ([link](https://github.com/NixOS/SC-election-2024/issues/47))


How would you ensure the long-term financial sustainability of the Nix project while preserving its open-source ethos and avoiding dependency on corporate sponsorships that may conflict with community values? What alternative funding models would you explore, and how would you engage the community in these decisions?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/47#issuecomment-2380307081">link</a>)</summary>

I think it's OK to rely on corporate sponsorships, and to limit which sponsored are accepted based on community values as discussed in https://github.com/NixOS/SC-election-2024/issues/17.

The biggest financial risk by far should be the cache, and there I would see the issue as our dependence on a specific **singular** sponsor and the difficulty and cost associated with moving.

As mentioned in https://github.com/NixOS/SC-election-2024/issues/19#issuecomment-2379775428 I think we could invest in a peer-to-peer system to distribute traffic and storage, which we could do to reduce how much traffic hits the sponsor, or spread the load across a variety of sponsors.
</details>

### What do you believe is the most pressing technical issue facing Nix, and how will you address it? ([link](https://github.com/NixOS/SC-election-2024/issues/16))


What do you believe is the most pressing technical issue currently facing Nix, and how would you prioritize addressing it to ensure the continued stability and advancement of the ecosystem?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/16#issuecomment-2380894195">link</a>)</summary>

The community has a large capacity to come up with technical solutions to problems, so I don't think that the role of the SC will be to come up with technical solutions to specific technical problems per se.

It will be making decisions, delegating power to make decisions, and at the end of the day taking responsibility for those decisions. So we need to have the expertise, but we do not need to come up with all the solutions.

When necessary, the SC should prioritize one thing over another, by telling the person in charge to prioritize one thing over another, or publishing a list or priorities, things like that.

This kind of decision making on technical matters is a large impasse right now, and I see it as the most pressing technical issue. Oftentimes not making a decision at all for years is worse than any of the possible options.
</details>

### How will you ensure community engagement and participation in SC decisions? ([link](https://github.com/NixOS/SC-election-2024/issues/12))


How would you ensure that the Nix community stays engaged with the Steering Committee (SC), actively participates, and has a meaningful voice in the SC decision-making process to prevent a disconnect in values between the community and the SC?

<details>
<summary>Answer (<a href="https://github.com/NixOS/SC-election-2024/issues/12#issuecomment-2379705635">link</a>)</summary>

I think involving stakeholders, being transparent, and listening to feedback are the most important ways to continuously involve the community.

Since the SC is elected by the community and has a mandate to make decisions, it should exercise that mandate.
</details>

## Unanswered questions
<details>
<summary>What is your plan on improving the darwin PR situtation? (<a href="https://github.com/NixOS/SC-election-2024/issues/97">link</a>)</summary>

Right now ofborg often takes days to complete package builds for the darwin arches and it is unviable as a reviewer to wait for them to complete as they might never complete or just time out, so darwin builds are often with a bit of luck. Also if they fail, people are often clueless on how to fix the compiler/linker issues.

What are your ideas for that? Should darwin be demoted to tier 3? Should we try to find sponsors for new hardware?
</details>
<details>
<summary>What are your thoughts on cross-compilation? (<a href="https://github.com/NixOS/SC-election-2024/issues/121">link</a>)</summary>

What are your thoughts on cross-compilation support in nixpkgs? In particular, what should happen when changes in nixpkgs conflict with maintaining cross-compilation support?
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
<summary>Which candidates would you like to work with on the Steering Committee? (<a href="https://github.com/NixOS/SC-election-2024/issues/101">link</a>)</summary>

If elected to the Steering Committee, which other candidates would you prefer to work with, and why?
</details>
<details>
<summary>Securing contribution possibilities (<a href="https://github.com/NixOS/SC-election-2024/issues/118">link</a>)</summary>

What possibilities do you see for securing contributors' future possibility to contribute to the project they put their work in? What is your stance towards implementing them?

This question is meant to cover broader aspects that mere code licensing, but also platform decisions (e.g. to protect contributors from being locked out in the future due to platform decisions)?
</details>
