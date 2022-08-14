//
//  SettingsCheck.swift
//  ios-interview-test
//
//  Created by Antoine Baché on 14/08/2022.
//

import SwiftUI

import Settings

/// **Important:** You must not change the content of this file.

struct Settings_Previews: PreviewProvider {
  static var previews: some View {
    SettingsScreen(user: UserModel(
      firstName: "Antoine",
      familyName: "Baché",
      status: "Just checking things out",
      joinedAt: Date(timeIntervalSince1970: 1_660_499_541)
    ))
  }
}
