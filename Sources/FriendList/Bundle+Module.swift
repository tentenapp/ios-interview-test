//
//  Bundle+Module.swift
//  FriendList
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import class Foundation.Bundle

#if !SWIFT_PACKAGE
extension Foundation.Bundle {
  static let module: Bundle = {
    guard let url = Bundle.main.url(forResource: "FriendList", withExtension: "bundle") else {
      preconditionFailure()
    }

    guard let bundle = Bundle(url: url) else {
      preconditionFailure()
    }

    return bundle
  }()
}
#endif
