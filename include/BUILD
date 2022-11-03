cc_library(
    name = "GL",
    # srcs = glob([
    #     "*.cc",
    #     "*.c",
    # ]),
    hdrs = glob([
        "GL/*.h",
    ]),
    include_prefix = "GL",
    includes = [
        ".",
        "./GL",
    ],
    visibility = [
        "//gluit:__pkg__",
        "//utilsrc:__pkg__",
    ],
)

cc_library(
    name = "main",
    hdrs = glob([
        "*.h",
    ]),
    # include_prefix = "trimesh",
    visibility = [
        "//gluit:__pkg__",
        "//libsrc:__pkg__",
        "//utilsrc:__pkg__",
    ],
)
