load(":repository_os.bzl", "normalise_os")

def _repository_rule_dummy_impl(rctx):
    os = normalise_os(rctx)
    rctx.file("os.bzl", "HOST_OS = \"{}\"".format(os))
    rctx.file("BUILD", "")

repository_rule_dummy = repository_rule(
    _repository_rule_dummy_impl,
)
