//
//  ConnectionIndicatorState.swift
//  ConnectionIndicator
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import Foundation

@frozen
public enum ConnectionIndicatorState: String {
  case connecting
  case connected
  case connectedAndPressed
}

extension ConnectionIndicatorState: Hashable {}
