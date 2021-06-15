load(":os_names.bzl", "OS_NAMES")

def normalise_os(repository_ctx):
    """ Normalises the repository_ctx os

    Args:
      repository_ctx: The repository context for a rule.

    Returns:
      [str]: The os target as according to @platforms//os/...
    """
    os = repository_ctx.os.name
    if "windows" in os:
        return OS_NAMES.windows
    elif "linux" == os:
        return OS_NAMES.linux
    elif "mac os x":
        return OS_NAMES.macos
    else:
        fail("Host OS not found.")
