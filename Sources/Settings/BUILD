load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@//build-system/apple-utils:apple_resource_bundle.bzl", "apple_resource_bundle")

swift_library(
    name = "Settings",
    module_name = "Settings",
    srcs = glob(["**/*.swift"]),
    data = [
        ":Resources",
    ],
    visibility = ["//Sources/ios-interview-test:__pkg__"],
    deps = [
        "//Submodules/TinyComponentsKit"
    ]
)

apple_resource_bundle(
    name = "Resources",
    bundle_name = "Settings",
    resources = glob([
        "Resources/*.xcassets/**",
        "Resources/*.lproj/**"
    ]),
)
