# Forward

Idealism can be troublesome when it prevents work from being done.

That said, there are many ideals that should be tended toward:

* Fewer dependencies
* Automation (legitimate automation...)
* Determinism (unless explicitly designed to be non-deterministic)
* Reliability
* As simple as reasonable, but no simpler

When you consider the bullet points above in the middle of your work you might find that it involves more work.  Advocating for idealism for somebody _else's_ work without having solutions seems meddlesome.

# Ideal Computing Infrastructure

There will be a lot of forward references, and I hope they will all be resolved by the time this is finished.

## Nothing should...

Ideally, nothing should:

* be in production that isn't in a "configuration management system" or in a "package".
* go into production that isn't "tagged".
* be tagged that isn't in an
	* "Artifact Repository"
	* "Revision control System"

The differences between Artifact Repository and Configuration Management System can sometimes be blurred.  We will not discuss the blurryness here, as this will focus on packaging.

## Definitions

### Package

A deployable unit with:

* A name
* A version number
* A standardized way of specifying dependencies
* An associated "package management system"
* (optional) Programs to run at various stages of the installation.

### Package Management System

Package management systems are capable of:

* Upgrading packages based off of "version number"
* Installing packages
* Removing packages
* Listing what packages and what version of the package is installed
* (optionally) Recognizing dependencies are required for installation
* (optionally) Fetching and installing those dependencies

Examples:

* yum
* apt


### Configuration Management System

Configuration management systems are typically capable of:

* Interacting with the package manager
* Altering configuration data
* Deploying files, etc.

Examples include:

* Puppet
* Chef

We will be focusing on packaging, and doing it in such a way as to not prevent a configuration management system from doing it's job.

### Tag

For revision control systems: tags refer to named revisions, or revision numbers that have been identified by something other than their revision number.

For packages, the tag typically reflects the version number of the package.


In the system that will be described, the name of the tag IS the version number.

### Version Number

A named revision of a deployable unit.

The system described relies on the package management system's ability to make decisions based off of the version number.

The system described is compatable with version numbers described here:

* https://semver.org/

Example:

* 1.2.3-0

# An Ideal Workflow

One should be able to easily:

* create the support files that create a package.
* import the support files into a revision control system.
* (maybe not so easy) Develop!
* build the package.
* import a package into a package repository.
* install a package.

## Development Cycle

This system is not inherently incompatable with things like, "Agile Development" or "Test Driven Development" or "Continuous Integration", etc.  I would classify those things as "stuff that seems like a good idea but requires a general level of agreement that people don't reach on their own unless some catchy name is given to it and they're forced to adhere to it".

This system _does_ require you to know how to interact with your revision control system to do things like:

* ignoring files or directories
* creating tags
* exporting tags
