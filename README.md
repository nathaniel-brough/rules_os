# rules_os
Provides a set of tools for determining the OS from various Bazel contexts.
## Getting started

``` py
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "rules_os",
    commit  = "b9a7cb63a80d3c7662b58bcf32347a3dcdf3ff3f",
    remote = "https://github.com/silvergasp/rules_os.git",
)

```

## Usage
Normalising repository os defnintions.

``` py
# your_repository_rule.bzl
load("@rules_os//os:repository_os.bzl" ,"normalise_os")

def _your_impl(repository_ctx):
    os = normalise_os(repository_ctx)
    print(os)
    # @platforms//os:linux or @platforms//os:windows or @platforms//os:macos

```
