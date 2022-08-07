//
//  ExecutionQueue.swift
//  ExecutionQueueTests
//
//  Created by Antoine Baché on 07/08/2022.
//

import ExecutionQueue
import XCTest

/// **Important:** You must not change the content of this file.

final class ExecutionQueueTests: XCTestCase {
  func testScheduler() {
    let task = makeDefaultExecutionQueue()

    let expectationA = XCTestExpectation(description: "First scheduled")
    let expectationB = XCTestExpectation(description: "Second scheduled")
    let expectationC = XCTestExpectation(description: "Last scheduled")

    let expectationUrgentA = XCTestExpectation(description: "Scheduled but urgent")
    let expectationUrgentB = XCTestExpectation(description: "Scheduled but urgent")

    task.schedule(priority: .low) {
      expectationA.fulfill()
    }

    task.schedule(priority: .high) {
      expectationUrgentA.fulfill()
    }

    task.schedule(priority: .low) {
      expectationB.fulfill()
    }

    task.schedule(priority: .high) {
      expectationUrgentB.fulfill()
    }

    task.schedule(priority: .low) {
      expectationC.fulfill()
    }

    wait(for: [
      expectationUrgentA, expectationUrgentB,
      expectationA, expectationB, expectationC,
    ], timeout: 10, enforceOrder: true)
  }
}
