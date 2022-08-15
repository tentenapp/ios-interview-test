//
//  UserModel.swift
//  Settings
//
//  Created by Antoine Baché on 14/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import Foundation

@frozen
public struct UserModel: Hashable {
  public let nameComponents: PersonNameComponents
  public let status: String
  public let joinedAt: Date

  @inlinable
  public init(
    nameComponents: PersonNameComponents,
    status: String,
    joinedAt: Date
  ) {
    self.nameComponents = nameComponents
    self.status = status
    self.joinedAt = joinedAt
  }
}

/// You're free to extend this model as you wish.

public extension UserModel {
  @inlinable
  init(
    firstName: String,
    familyName: String,
    status: String,
    joinedAt: Date
  ) {
    self.init(
      nameComponents: PersonNameComponents(
        givenName: firstName,
        familyName: familyName
      ),
      status: status,
      joinedAt: joinedAt
    )
  }
}
