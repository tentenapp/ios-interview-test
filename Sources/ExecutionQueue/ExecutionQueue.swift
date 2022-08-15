//
//  ExecutionQueue.swift
//  ExecutionQueue
//
//  Created by Antoine Baché on 07/08/2022.
//  Copyright © 2022 Ten Ten. All rights reserved.
//

import Foundation

/// **TODO:** You must implement an `ExecutionQueue` that allows the scheduling of async tasks, from a non-async context
/// and preserves the scheduling order – while respecting the `TaskPriority`.
///
/// You can see `Tests/ExecutionQueueTests` for more details.

public protocol ExecutionQueue: AnyObject {
  /// Schedule a task to be executed.
  /// The scheduling order is preserved.
  func schedule(
    priority: TaskPriority?,
    task: @escaping () async -> Void
  )
}

public func makeDefaultExecutionQueue(
) -> some ExecutionQueue {
  // FIXME: Implement me
}
