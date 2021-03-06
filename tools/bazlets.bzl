load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

NAME = "com_googlesource_gerrit_bazlets"

def load_bazlets(
        commit,
        local_path = None):
    if not local_path:
        git_repository(
            name = NAME,
            remote = "https://gerrit.googlesource.com/bazlets",
            commit = commit,
        )
    else:
        native.local_repository(
            name = NAME,
            path = local_path,
        )
