// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ios-interview-test",
  platforms: [
    .iOS(.v15),
    .macOS(.v12),
    .macCatalyst(.v15),
    .watchOS(.v8),
    .tvOS(.v15),
  ],
  products: [
    .library(
      name: "ios-interview-test",
      targets: ["ios-interview-test"]
    ),
  ],
  dependencies: [
    .package(path: "./Packages/TinyComponentsKit"),
  ],
  targets: [
    .target(
      name: "ConnectionIndicator",
      resources: [.process("./Resources")]
    ),
    .target(
      name: "ExecutionQueue"
    ),
    .target(
      name: "FriendList",
      dependencies: ["TinyComponentsKit"],
      resources: [.process("./Resources")]
    ),
    .target(
      name: "Settings",
      dependencies: ["TinyComponentsKit"]
    ),

    .target(
      name: "ios-interview-test",
      dependencies: [
        "ConnectionIndicator",
        "FriendList",
        "Settings",
        "TinyComponentsKit",
      ]
    ),

    .testTarget(
      name: "ExecutionQueueTests",
      dependencies: ["ExecutionQueue"]
    ),
  ]
)
