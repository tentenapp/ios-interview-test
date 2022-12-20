load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@//build-system/apple-utils:apple_resource_bundle.bzl", "apple_resource_bundle")

swift_library(
    name = "FriendList",
    module_name = "FriendList",
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
    bundle_name = "FriendList",
    resources = glob([
        "Resources/*.xcassets/**",
        "Resources/*.lproj/**",
        "Resources/*.json",
    ]),
)
