//
//  RoundedButtonStyle.swift
//  RoundedButton
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

#if canImport(UIKit)

import SwiftUI
import TenTenSwiftUI

@frozen
public struct RoundedButtonStyle: ButtonStyle {
  @usableFromInline
  let cornerRadius: CGFloat

  @inlinable
  public init(
    cornerRadius: CGFloat
  ) {
    self.cornerRadius = cornerRadius
  }

  @inlinable
  public func makeBody(
    configuration: Configuration
  ) -> some View {
    configuration.label
      .bezierCornerRadius(self.cornerRadius, corners: .allCorners)
  }
}

#endif
