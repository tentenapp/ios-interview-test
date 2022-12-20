load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl",  "ios_unit_test")

swift_library(
    name = "ExecutionQueueTests",
    module_name = "ExecutionQueueTests",
    srcs = glob(["**/*.swift"]),
    testonly = True,
    deps = [
        "//Sources/ExecutionQueue",
    ]
)

ios_unit_test(
    name = "ExecutionQueueTestsUnit",
    minimum_os_version = "15.4",
    deps = [":ExecutionQueueTests"],
    tags = ["unit"],
)
