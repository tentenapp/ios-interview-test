//
//  FriendCellModel.swift
//  FriendCellModel
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import Foundation

/// **Important:** You may extend this model as you wish, but you cannot change its `.init()` methods.

@frozen
public struct FriendCellModel: Hashable {
  public let firstName: String
  public let familyName: String
  public let profilePictureURL: URL

  @inlinable
  init(
    firstName: String,
    familyName: String,
    profilePictureURL: URL
  ) {
    self.firstName = firstName
    self.familyName = familyName
    self.profilePictureURL = profilePictureURL
  }
}
