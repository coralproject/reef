# The Coral Project Roadmap

__Note: this document is not complete__

This document outlines the direction toward which we will be focusing our efforts for the foreseeable future. It is neither definitive nor comprehensive. Please feel free to contribute updates to this document if anything strikes you as incomplete, nonsensical, mis-prioritized, contrary to our principles, or otherwise discombobulated.

## How to approach this document

Please follow the following steps to align efforts and avoid duplication:

* If this is your first time here, please read this document in it's entirety before suggesting changes. 
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

This roadmap document is organized into products, features and processes. This document establishes the canonical names for all products and features. README.md files in technical repos will cross reference this document.

## Products

### Trust 
Configurable metrics and analytics

#### Smooth imports and data sync with Sponge

There's a family of open issues surrounding smoothing out the import process and keeping data in sync.  This is an opportunity to work on interesting data transormations and issues surrounding moving large datasets.

* [Integrate MongoDB strategies](https://github.com/coralproject/sponge/issues/19)
* [Import error resolution workflow / tooling](https://github.com/coralproject/sponge/issues/13)
* [Custom Queries in Strategies](https://github.com/coralproject/sponge/issues/16)
* [Regularly scheduled imports (snapshot sync)](https://github.com/coralproject/sponge/issues/17)

#### The Coral Schema!

We will be refining the schema for core Coral datatypes throughout the first half of 2016. The majority of the work here will involve working on Go service endpoints, aka Pillar. This work also touches imports, aggregation query reads and data science integration.

* [Count caching in documents](https://github.com/coralproject/pillar/issues/7)





### Curate 
Moderation and community engagement


### Contribute
A flexible UGC engine


### Conversation
Community UI, eg. comments, messaging, etc...


### Atoll 
Data Science Pipelines


### Sponge
Import / Export tools

## Processes

### Spawn
Launch and configure Coral ecosystems

### Brain
Processes surrounding security, backup/restores, and more...
