copts = [
    "-Wno-unused-parameter",
    "-Wno-shadow",
    "-Wno-implicit-fallthrough",
    "-Wno-cast-function-type",
    # "-Wno-restrict",
    # "-Wno-stringop-truncation",
]

linkopts = [
    "-framework GLUT",
    "-framework OpenGL",
]

glui_bitmap_img_data_hdrs = [
    "glui_img_checkbox_0.c",
    "glui_img_checkbox_1.c",
    "glui_img_radiobutton_0.c",
    "glui_img_radiobutton_1.c",
    "glui_img_uparrow.c",
    "glui_img_downarrow.c",
    "glui_img_leftarrow.c",
    "glui_img_rightarrow.c",
    "glui_img_spinup_1.c",
    "glui_img_spinup_0.c",
    "glui_img_spindown_1.c",
    "glui_img_spindown_0.c",
    "glui_img_checkbox_0_dis.c",
    "glui_img_checkbox_1_dis.c",
    "glui_img_radiobutton_0_dis.c",
    "glui_img_radiobutton_1_dis.c",
    "glui_img_spinup_dis.c",
    "glui_img_spindown_dis.c",
    "glui_img_listbox_up.c",
    "glui_img_listbox_down.c",
    "glui_img_listbox_up_dis.c",
]

glui_bitmap_img_data_srcs = ["glui_bitmap_img_data.cc"]

cc_library(
    name = "glui_bitmap_img_data",
    srcs = glui_bitmap_img_data_srcs,
    hdrs = glui_bitmap_img_data_hdrs,
    copts = copts,
    # includes = ["."],
    linkopts = linkopts,
)

# NOTE we set the target to be incompatible with Mac due to missing `GL/glx.h`
cc_library(
    name = "main",
    srcs = glob(
        [
            "*.cc",
            "*.c",
        ],
        exclude = glui_bitmap_img_data_srcs + glui_bitmap_img_data_hdrs,
    ),
    hdrs = glob([
        "*.h",
    ]),
    copts = copts,
    includes = [
        ".",
        "../include",
    ],
    linkopts = linkopts,
    target_compatible_with = select({
        "@platforms//os:osx": ["@platforms//:incompatible"],
        "//conditions:default": [],
    }),
    visibility = ["//utils:__pkg__"],
    deps = [
        ":glui_bitmap_img_data",
        "//include:GL",
    ],
)
