# Go Coding Style

Unless explicitly stated, we follow all coding guidelines from the Go
community. All new contributions should make a best effort to clean up and make the code base better than they left it.
Apply your best judgment and remember that everyone is human.

The rules:

1. All code should be formatted with `gofmt -s`.
2. All code should pass the default levels of
   [`golint`](https://github.com/golang/lint).
3. All code should follow the guidelines covered in [Effective
   Go](http://golang.org/doc/effective_go.html) and [Go Code Review
   Comments](https://github.com/golang/go/wiki/CodeReviewComments).
4. Comment the code. Tell us the why, the history and the context.
5. Document _all_ declarations and methods, even private ones. Declare
   expectations, caveats and anything else that may be important. If a type
   gets exported, having the comments already there will ensure it's ready.
6. Variable name length should be proportional to it's context and no longer.
   `noCommaALongVariableNameLikeThisIsNotMoreClearWhenASimpleCommentWouldDo`.
   In practice, short methods will have short variable names and globals will
   have longer names.
7. No underscores in package names. If you need a compound name, step back,
   and re-examine why you need a compound name. If you still think you need a
   compound name, lose the underscore.
8. No utils or helpers packages. If a function is not general enough to
   warrant it's own package, it has not been written generally enough to be a
   part of a util package. Just leave it unexported and well-documented.
9. All tests should run with `go test` and outside tooling should not be
   required. No, we don't need another unit testing framework. Assertion
   packages are acceptable if they provide _real_ incremental value.
10. Even though we call these "rules" above, they are actually just
    guidelines. Since you've read all the rules, you now know that.

If you are having trouble getting into the mood of idiomatic Go, we recommend
reading through [Effective Go](http://golang.org/doc/effective_go.html). The
[Go Blog](http://blog.golang.org/) is also a great resource. Drinking the
kool-aid is a lot easier than going thirsty.

_Attribution: Go Coding Style adopted from the Docker project._

## Useful Tools when developing

* golint
* gofmt
* goimports
* go vet
* errcheck

## Resources

* [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments)
* [Best Practices for Production Environments](https://www.youtube.com/watch?v=Y1-RLAl7iOI)
* [12 Factor App](http://12factor.net/)
* [Tools for working with Go Code](https://speakerdeck.com/farslan/tools-for-working-with-go-code)

# Javascript conventions

We have not instituted a js convention. For a good guide, see [Airbnb js react conventions](https://github.com/airbnb/javascript/tree/master/react). 


