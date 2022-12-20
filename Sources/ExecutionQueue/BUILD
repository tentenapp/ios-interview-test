load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "ExecutionQueue",
    module_name = "ExecutionQueue",
    srcs = glob(["**/*.swift"]),
    visibility = [
        "//Sources/ios-interview-test:__pkg__",
        "//Tests/ExecutionQueueTests:__pkg__",
    ]
)
