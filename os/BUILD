load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

stardoc(
    name = "os_docs",
    out = "os_doc.md",
    input = "repository_os.bzl",
    deps = [":os"],
)

bzl_library(
    name = "os",
    srcs = [
        "os_names.bzl",
        "repository_os.bzl",
    ],
)
