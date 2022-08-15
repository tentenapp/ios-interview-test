// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

//  Copyright © 2022 Ten Ten. All rights reserved.

import PackageDescription

let package = Package(
  name: "TinyComponentsKit",
  platforms: [
    .iOS(.v15),
    .macOS(.v12),
    .watchOS(.v8),
    .tvOS(.v15),
  ],
  products: [
    .library(
      name: "TinyComponentsKit",
      targets: ["TinyComponentsKit"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    // MARK: - Components

    .target(
      name: "PressReleaseButton",
      dependencies: []
    ),
    .target(
      name: "RoundedButton",
      dependencies: [
        "TenTenSwiftUI",
      ]
    ),

    .target(
      name: "GrowingVStack"
    ),

    // MARK: - System Extensions

    .target(
      name: "TenTenSwiftUI",
      dependencies: [],
      path: "Sources/System Extensions/TenTenSwiftUI"
    ),

    // MARK: - Product

    .target(
      name: "TinyComponentsKit",
      dependencies: [
        "GrowingVStack",
        "PressReleaseButton",
        "RoundedButton",

        "TenTenSwiftUI",
      ]
    ),
  ]
)
