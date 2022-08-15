//
//  ConnectionIndicator.swift
//  ConnectionIndicator
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import SwiftUI

/// **TODO**: You must implement a 'connection indicator' view, animated, in SwiftUI.
///
/// You should implement a view that respects the states defined in `ConnectionIndicatorState`.
/// Transitions between the states should be smooth.
///
/// When connecting, the view cannot be pressed.
/// When connected, the view can be pressed.
///
/// When the view is pressed, its borders are a bit wider and a bit more transparent.
///
/// You can use Ten Ten's connection animation as a reference, or Instagram's one.
///
/// The view must have a frame of 117x113.

@frozen
public struct ConnectionIndicator: View {
  @Binding private var state: ConnectionIndicatorState

  public init(
    state: Binding<ConnectionIndicatorState>
  ) {
    self._state = state
  }

  public var body: some View {
    // FIXME: Implement me
    EmptyView()
  }
}
