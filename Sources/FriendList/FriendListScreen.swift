//
//  FriendListScreen.swift
//  FriendListScreen
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import SwiftUI

/// **TODO:** You must implement a friendlist view.
/// There is a set of mocked data in `Resources/`.
/// You must load and parse the JSON to generate an array of `FriencCellModel`
/// that you'll display.
///
/// In order to implement the cells, you should follow the `cell-reference.png` and `cell-reference-no-picture.png`.
///
/// A few requirements:
/// - no scroll indicators
/// - a vertical spacing of `24` between two cells.
/// - a button that shrinks when it is pressed (a bouncy/springy animation would be appreciated).
/// - must be searchable
/// - must not lag / ram (beware, the mocked data set is huge)
/// - must be ordered, like in the iOS Contact app
/// - must work on iOS 15
///
/// You are free to extend `TinyComponentsKit` to add components you'll need.
///

@frozen
public struct FriendListScreen: View {
  @usableFromInline
  let models: [FriendCellModel]

  @inlinable
  public init(models: [FriendCellModel]) {
    self.models = models
  }

  public var body: some View {
    EmptyView()
  }
}

public extension FriendListScreen {
  static func mocked() -> some View {
    // FIXME: Returns a view initialized with the mocked data
    FriendListScreen(models: [])
  }
}
