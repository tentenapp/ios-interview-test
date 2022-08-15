//
//  PressReleaseButton.swift
//  PressReleaseButton
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import SwiftUI

/// **TODO:** You should implement a `PressReleaseButton` button view that is able to perform an action
/// when it is pressed or released.
///
/// You must also implement `PressReleaseButtonStyle` (cf: `PressReleaseButtonStyle.swift`)
/// that you _may or may not_ use to implement `PressReleaseButton`.
///

@frozen
public struct PressReleaseButton<Label: View>: View {
  public typealias ActionCallback = () -> Void

  @inlinable
  public init(
    onPress: @escaping ActionCallback,
    onRelease: @escaping ActionCallback,
    isPressed: Binding<Bool>,
    @ViewBuilder label: () -> Label
  ) {
    // FIXME: Implement me
  }

  public var body: some View {
    // FIXME: Implement me
  }
}
