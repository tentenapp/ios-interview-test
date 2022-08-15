//
//  ButtonChecks.swift
//  ios-interview-test
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import SwiftUI

import TinyComponentsKit

/// **Important:** You must not change the content of this file.

public struct MainView: View {
  @State private var roundedButtonClicks = 0

  @State private var pressReleaseButtonPress = 0
  @State private var pressReleaseButtonRelease = 0
  @State private var pressReleaseButtonIsPressed = false

  public var body: some View {
    VStack {
      self.roundedButtonView
      self.pressReleaseButtonView
    }
  }
}

private extension MainView {
  @ViewBuilder
  var roundedButtonView: some View {
    Button(
      action: {
        self.roundedButtonClicks += 1
      }
    ) {
      Color.red
        .overlay {
          Text("Rounded Button: \(self.roundedButtonClicks)")
        }
        .frame(width: 250, height: 80)
    }
    #if canImport(UIKit)
    .buttonStyle(RoundedButtonStyle(cornerRadius: 19))
    #endif
  }

  @ViewBuilder
  var pressReleaseButtonView: some View {
    PressReleaseButton(
      onPress: {
        self.pressReleaseButtonPress += 1
      },
      onRelease: {
        self.pressReleaseButtonRelease += 1
      },
      isPressed: self.$pressReleaseButtonIsPressed
    ) {
      Color.red
        .overlay {
          Text(
            "Press: \(self.pressReleaseButtonPress) | Release: \(self.pressReleaseButtonRelease)"
          )
        }
        .frame(width: 250, height: 80)
        .scaleEffect(self.pressReleaseButtonIsPressed ? 0.95 : 1.00)
        .animation(.spring(), value: self.pressReleaseButtonIsPressed)
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
