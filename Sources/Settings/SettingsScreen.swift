//
//  SettingsScreen.swift
//  Settings
//
//  Created by Antoine Baché on 14/08/2022.
//

import SwiftUI

/// **TODO:** You must follow the provided Figma and implement its content.
/// https://www.figma.com/file/nqXnSagl1TMbHt1f8asOz6/Settings-test?node-id=0%3A1

@frozen
public struct SettingsScreen: View {
  @usableFromInline
  let user: UserModel

  /// **Important**: This constructor must not change.
  @inlinable
  public init(
    user: UserModel
  ) {
    self.user = user
  }

  public var body: some View {
    // FIXME: Implement me
    EmptyView()
  }
}
