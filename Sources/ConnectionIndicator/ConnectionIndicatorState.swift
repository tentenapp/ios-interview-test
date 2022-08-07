//
//  ConnectionIndicatorState.swift
//  ConnectionIndicator
//
//  Created by Antoine Baché on 07/08/2022.
//

import Foundation

@frozen
public enum ConnectionIndicatorState: String {
  case connecting
  case connected
  case connectedAndPressed
}

extension ConnectionIndicatorState: Hashable {}
