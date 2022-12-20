load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "TinyComponentsKit",
    module_name = "TinyComponentsKit",
    srcs = glob(["Sources/**/*.swift"]),
    visibility = ["//Sources:__subpackages__"],
    deps = [
        "//Submodules/TinyComponentsKit/Submodules/GrowingVStack",
        "//Submodules/TinyComponentsKit/Submodules/PressReleaseButton",
        "//Submodules/TinyComponentsKit/Submodules/RoundedButton",
        "//Submodules/TinyComponentsKit/Submodules/TenTenSwiftUI",
    ]
)
