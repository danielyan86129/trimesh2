package(default_visibility = ["//visibility:public"])

copts = [
    "-Wno-unused-parameter",
    "-Wno-shadow",
    "-Wno-implicit-fallthrough",
    "-Wno-cast-function-type",
    # "-Wno-restrict",
    # "-Wno-stringop-truncation",
    # "-Iinclude/",
]

linkopts = [
    "-framework GLUT",
    "-framework OpenGL",
]

cc_library(
    name = "libtrimesh",
    srcs = glob(["*.cc"]),
    hdrs = ["shape_data.inc"],
    copts = copts,
    linkopts = linkopts,
    # visibility = ["//utilsrc:__pkg__"],
    deps = [
        "//include:main",
    ],
)
