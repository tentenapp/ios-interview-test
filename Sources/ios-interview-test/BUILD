load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load(
    "@//build-system/apple-utils:plist_fragment.bzl",
    "plist_fragment",
)

swift_library(
    name = "ios-interview-test-lib",
    module_name = "iOSInterviewTest",
    srcs = glob(["**/*.swift"]),
    deps = [
        "//Sources/ConnectionIndicator",
        "//Sources/ExecutionQueue",
        "//Sources/FriendList",
        "//Sources/Settings",
        "//Submodules/TinyComponentsKit"
    ]
)

ios_framework(
    name = "ios-interview-test",
    bundle_id = "com.tenten.interview.test",
    infoplists = [":Info"],
    minimum_os_version = "15.4",
    families = ["iphone"],
    deps = [":ios-interview-test-lib"],
    visibility = ["//visibility:public"],
)

INFO_PLIST_TEMPLATE = """
    <key>CFBundleIdentifier</key>
    <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
"""

plist_fragment(
    name = "Info",
    extension = "plist",
    template = INFO_PLIST_TEMPLATE,
)
