//
//  View+BezierCornerRadius.swift
//  TenTenSwiftUI
//
//  Created by Antoine Baché on 07/08/2022.
//

#if canImport(UIKit)

import SwiftUI
import UIKit

public extension View {
  /// Applies a Bezier corner radius to a view.
  ///
  /// - Parameters:
  ///   - radius: The radius of to apply to the corners
  ///   - corners: The corners to which the radius will be applied
  @inlinable
  func bezierCornerRadius(
    _ radius: CGFloat,
    corners: UIRectCorner = .allCorners
  ) -> some View {
    self.clipShape(RoundedCorner(radius: radius, corners: corners))
  }
}

struct RoundedCorner: Shape {
  @inlinable
  init(
    radius: CGFloat,
    corners: UIRectCorner
  ) {
    // FIXME: Implement me
  }

  // FIXME: Implement me
}

#endif
