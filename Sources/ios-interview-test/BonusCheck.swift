//
//  BonusChecks.swift
//  ios-interview-test
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import SwiftUI

import TinyComponentsKit

/// **Important:** You must not change the content of this file.

public struct GrowingVStackCheck: View {
  public var body: some View {
    GrowingVStack {
      Circle()
        .foregroundColor(.red)
        .frame(width: 25, height: 25)

      Circle()
        .foregroundColor(.green)
        .frame(width: 25, height: 25)

      Circle()
        .foregroundColor(.blue)
        .frame(width: 25, height: 25)

      Circle()
        .foregroundColor(.cyan)
        .frame(width: 25, height: 25)

      Circle()
        .foregroundColor(.yellow)
        .frame(width: 25, height: 25)
    }
  }
}

struct GrowingVStackCheck_Previews: PreviewProvider {
  static var previews: some View {
    GrowingVStackCheck()
  }
}
