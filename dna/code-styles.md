# Code Styles for Coral

This is a guide we are trying to follow when writing code for the Coral Project.

In general the motto is "EMBRACE SIMPLICITY"

*This guide intends to be followed but is not required.*

## On GO Language

### Conventions

* Create error types at the beginning of the package
* Configuration files or env variables?
  * Environments
* Test for everything
* Same package in a folder (different files are ok)
* Collection names: lower case
* File names in lower case
* package log
* package flag


### Best Practices

* single gopath for all the projects
* avoid named return parameters
* avoid make and new (unelss you know sizes)
* use struct{} for sentinel value: sets, signal chans
* break long lines on parameters

#### Repo Structure

github.com/coralproject/whatever/
  README.md
  Makefile
  main.go
  foo/
    foo.go
    bar.go

### Useful Tools when developing

* golint
* gofmt
* goimports
* go vet
* errcheck

## On Javascript Language

### Conventions

* NYT Style

### Useful Tools when developing

* eslint

## Resources

* [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments)
* [Best Practices for Production Environments](https://www.youtube.com/watch?v=Y1-RLAl7iOI)
* [12 Factor App](http://12factor.net/)
* [Tools for working with Go Code](https://speakerdeck.com/farslan/tools-for-working-with-go-code)
