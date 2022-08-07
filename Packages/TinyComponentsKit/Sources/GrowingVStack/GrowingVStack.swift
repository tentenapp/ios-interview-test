//
//  GrowingVStack.swift
//  GrowingVStack
//
//  Created by Antoine Baché on 07/08/2022.
//

import SwiftUI

/// **TODO:** This is a bonus assignment. It's okay if you don't do this.
/// You need to implement a `GrowingVStack`, which acts like a standard `VStack` but
/// applies a `.scaleEffect(1.00 + (0.15 * CGFloat(ndx)))` to each child view.
///
/// The expected solution requires you to have a deep understanding of how SwiftUI is implemented.

@frozen
public struct GrowingVStack<Content: View>: View {
  @usableFromInline
  let content: Content

  @inlinable
  public init(
    @ViewBuilder content: () -> Content
  ) {
    self.content = content()
  }

  @inlinable
  public var body: some View {
    EmptyView()
  }
}
