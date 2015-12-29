# The Coral Project Roadmap

__Note: this document is not yet complete but is already useful__

This document outlines the direction toward which we will be focusing our efforts for the foreseeable future. It is neither definitive nor comprehensive. Please feel free to contribute updates to this document if anything strikes you as incomplete, nonsensical, mis-prioritized, contrary to our principles, or otherwise discombobulated.

## How to approach this document

Please follow the following steps to align efforts and avoid duplication:

* If this is your first time here, please read this document in its entirety before suggesting changes. 
* If you're interested in keeping up with the nitty gritty of our changing prioritizaiton and product strategy, Watch this document as well as other ROADMAP files in other Coral repos.
* If you see something here that you __want to implement__...
	* Check the issues to see if anyone is working on it and if they are, consider joining forces
	* If it doesn't look like anyone is working on the thing, open an issue as outlined in our CONTRIBUTING documentation and update this document linking to the issue
	* Know that one or more people on our end will smile when we see the pr come in and help coordinate efforts the best we can
* If you see something here that you __want to change__...
	* Check issues and pull requests to see if someone is already talking about a similar change
	* If not, fork and file a Pull Request
	* (If you're suggesting a major change, consider opening an issue before the PR to discuss whether or not the change)
	
## Layout

This roadmap document is organized into products. Throughout 2016 we will be engaged in a series of product rollouts that will look something like this:

* _pre-alpha_ - We haven't started building this yet.  We are fielding architecture suggestions, feature requests, and examples to follow or avoid.  This is a great time to get inolved in the conversation from the ground up.
* _alpha_ - Active development of core features.  This is the best time to get involved in helping establish architecture, schemas and other low level formative things.
* _beta (partner)_ - Ready for our beta partners to use with the understanding that we will work with them to resolve issues. This phase is designed to expose useful features, hidden bugs and lacks of clarity.  If you're new to coding or haven't participated before, look for issues under beta milestones.
* _beta_ - Stable, secure, feature-functional, documented and ready to use without our involvement.  All breaking issues are resolved, all others are documented. This is a great time to bring ideas for features or just hunt down existing bugs.
* _release_ - There comes that bittersweet day in the life of every piece of code when we have to send it off into the world to make its own way. As we approach releases, we will be actively looking for community maintainers among those who have participated along the way. Interested? Let us know!

## Trust 
Configurable metrics and analytics

__(Alpha)__

### Smooth imports and data sync with Sponge

There's a family of open issues surrounding smoothing out the import process and keeping data in sync.  This is an opportunity to work on interesting data transormations and issues surrounding moving large datasets.

* [Integrate MongoDB strategies](https://github.com/coralproject/sponge/issues/19)
* [Import error resolution workflow / tooling](https://github.com/coralproject/sponge/issues/13)
* [Custom Queries in Strategies](https://github.com/coralproject/sponge/issues/16)
* [Regularly scheduled imports (snapshot sync)](https://github.com/coralproject/sponge/issues/17)

### Apis and schemas

We will be refining the schema for core Coral datatypes throughout the first half of 2016. The majority of the work here will involve working on Go service endpoints, aka Pillar. This work also touches imports, aggregation query reads, and data science integration.

* [Count caching in documents](https://github.com/coralproject/pillar/issues/7)
* [Allow notes on Comments and Users](https://github.com/coralproject/pillar/issues/8)
* [Build Tag apis](https://github.com/coralproject/pillar/issues/9)

There is also a lot of work to be done building api endpoints via MongoDB aggregation pipelines with Xenia:

* [Create User Search pipeline](https://github.com/coralproject/xenia/issues/32)
* [Create xmatch (composable query parameter -> $match functionality)](https://github.com/coralproject/xenia/issues/33)

### Front End 

There's a ton to do on the front end. This is a great time to get involved from the ground floor.  If you like React, Redux, ES6, etc... take a look at these issues:

* [Create "Tag Manager"](https://github.com/coralproject/cay/issues/10)
* [Create "Tagger" widget](https://github.com/coralproject/cay/issues/11)
* [Integrate Logging / Analytics](https://github.com/coralproject/cay/issues/12)
* [Create User Search box](https://github.com/coralproject/cay/issues/13)
* [Create "Filter" ui](https://github.com/coralproject/cay/issues/14)

### Systems / Devops

* [Launch ELK logging stack](https://github.com/coralproject/reef/issues/10)


### Atoll - Data Science
Do you like data science? We are currently trying to figure out the most meaningful things we can do with data and the best way to incorporate them into our ecosystem.

https://github.com/coralproject/atoll/issues

### Deployment, Security and Processes
We want to make it quick and easy to deploy and develop Coral products. One of the best ways you can contribute is by letting us know about your experience on this repo.

See the documents and issues in this repo. 


## Pre-Alpha Products

The following projects are on the roadmap for 2016. We haven't started coding them yet, but please do join the planning on the wiki or our [community site](https://community.coralproject.net).

### Curate 
Community cultivation and engagement

#### Principles

__Strategic Engagement__: Time is the limiting factor in journalistic community building. Curate will provide a flexible set of notifications, queues and other tools that will help make community engagement as efficient and effective as possible.  

#### Who is it for?

Our Curate product is conceived to be used by anyone tasked with engaging the community, including:

* Managers who work to encourage "positive" behavior
* Moderators tasked with dealing with "negative" content and actors
* Editors, journalists and others who are interested in deriving insights and growing audiences
* Trusted users who are given limited permissions and duties

#### Features and Use Cases

##### Moderation Application

* Surface content and activity that may be contrary to guidelines
* Provide efficient interfaces to moderate content
* Provide as much information as possible to inform each decision
  * User's history
  * Thread tennor
  * Highlight presence of suspect language, etc...
* Focus on education over punishment
  * Allow moderation actions to be associated with community guidelines
  * Community Tribunal feature sets

##### Community Manager Interface

* CRM style user management
  * History of communications / notes / user activity
  * Outreach tools
  * Apply tags, privileges, etc... to users
* Community configuration 
  * Behavior of comment streams (Conversation controls)
  * Management of UGC (Contribute controls)
  * Moderation options, pre/post/auto moderation
* Community guideline building / management 

##### Content Creator Interface

* Focus on filtered segment of the community
  * One or more sections / asset taxonomy tags 
  * Assets by one or more authors
* Tools to surface impactful opportunities to contribute 
  * rises in activity on an article you've authored,
  * a post is getting a large number of replies that have positive sentiment,

#### Implementation

This product will require significant development across Cay (fe application), Pillar (custom service layer), Xenia (dynamic query engine.)

Some of the things we'll need to build:

* A full featured moderation system, complete with prioritization, queues and alerts
* A CRM for community users  
* Web hooks and pub/sub style notifications will be built in to allow integration with existing commenting stacks.
* A detailed ACL style user system will need to be put in place. This system will most likely integrate with OAUTH/SAML servers.
* A push alerting system utilizing outside tech such as sms/slack/etc... is in the cards.

If done flexibly, pieces of Curate will lay groundwork for future projects, such as:

* A flexible settings interface to drive the configuration options across many projects,

### Contribute
A flexible UGC engine

### Conversation
Community UI, eg. comments, messaging, etc...
