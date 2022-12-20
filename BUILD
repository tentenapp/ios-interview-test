load("@com_github_buildbuddy_io_rules_xcodeproj//xcodeproj:defs.bzl", "top_level_target", "xcodeproj")

# Documentation: https://github.com/buildbuddy-io/rules_xcodeproj/blob/main/docs/bazel.md#xcodeproj
xcodeproj(
    name = "xcodeproj",
    adjust_schemes_for_swiftui_previews = True,
    build_mode = "bazel",
    project_name = "TenTen-iOS-Interview",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(
            "//Sources/ios-interview-test",
            target_environments = [
                "simulator",
            ],
        ),
    ],
)