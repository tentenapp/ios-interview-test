//
//  PressReleaseButtonStyle.swift
//  PressReleaseButton
//
//  Created by Antoine Baché on 07/08/2022.
//

import SwiftUI

/// **TODO:** You must implement a button style that is able to execute
/// an action when the button is pressed, or released.

@frozen
public struct PressReleaseButtonStyle: PrimitiveButtonStyle {
  @inlinable
  public init(
    onPress: @escaping () -> Void,
    isPressed: Binding<Bool>
  ) {
    // FIXME: Implement me
  }
}
