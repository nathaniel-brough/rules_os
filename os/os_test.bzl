load("@test_dummy//:os.bzl", "HOST_OS")

def _dummy_test_impl(ctx):
    if not ctx.target_platform_has_constraint(ctx.attr._host_os[platform_common.ConstraintValueInfo]):
        fail("Repository rules dummy_test incorrectly determined os.")

dummy = rule(
    _dummy_test_impl,
    attrs = {
        "_host_os": attr.label(default = HOST_OS, providers = [platform_common.ConstraintValueInfo]),
    },
)
