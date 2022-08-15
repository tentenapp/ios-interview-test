//
//  ConnectionIndicatorCheck.swift
//  ios-interview-test
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import ConnectionIndicator
import SwiftUI

/// **Important:** You must not change the content of this file.

struct ConnectionIndicatorCheck: View {
  @State private var state: ConnectionIndicatorState = .connecting

  var body: some View {
    VStack {
      Button(action: {
        switch self.state {
        case .connecting:
          self.state = .connected
        case .connected:
          self.state = .connecting

        case .connectedAndPressed:
          break
        }
      }) {
        Text("Is Connecting?: \(self.state.rawValue)")
      }

      ConnectionIndicator(state: self.$state)
    }
  }
}

struct ConnectionIndicator_Previews: PreviewProvider {
  static var previews: some View {
    ConnectionIndicatorCheck()
  }
}
