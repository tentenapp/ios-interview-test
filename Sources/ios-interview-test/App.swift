//
//  App.swift
//  ios-interview-test
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//
import SwiftUI

import Settings

/// **Important:** You must not change the content of this file.
@main
struct TestApp: App {
  var body: some Scene {
    WindowGroup {
      AppView.buildFromLaunchArguments()
    }
  }
}

private enum AppView: View {
  case `default`
  case friendlist
  case settings

  static func buildFromLaunchArguments() -> Self {
    if LaunchArguments.showFriendlist {
      return .friendlist
    } else if LaunchArguments.showSettings {
      return .settings
    }

    return .default
  }
}

private extension AppView {
  @ViewBuilder
  var body: some View {
    switch self {
    case .default:
      MainView()
    case .friendlist:
      FriendListView()
    case .settings:
      SettingsView()
    }
  }
}

private enum LaunchArguments {
  static let showFriendlist = ProcessInfo.processInfo.arguments.contains("friendlist")
  static let showSettings = ProcessInfo.processInfo.arguments.contains("settings")
}
