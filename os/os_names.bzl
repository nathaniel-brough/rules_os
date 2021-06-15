"""os_names.bzl contains a set of common normalised host os's"""

OS_NAMES = struct(
    windows = "@platforms//os:windows",
    mac = "@platforms//os:macos",
    linux = "@platforms//os:linux",
)
