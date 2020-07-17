//
//  QueueTest.swift
//
//
//  Created by Philip Krück on 02.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class QueueTest: XCTestCase {
    
    func testQueue() {
        var intQueue = Queue<Int>()
        intQueue.enqueue(1)
        intQueue.enqueue(2)
        intQueue.enqueue(3)
        
        XCTAssertEqual(intQueue.count, 3)
        XCTAssertEqual(intQueue.dequeue(), 1)
        XCTAssertEqual(intQueue.dequeue(), 2)
        XCTAssertEqual(intQueue.dequeue(), 3)
        XCTAssertEqual(intQueue.count, 0)
    }
    
    func testQueueIteration() {
        var intQueue = Queue<Int>()
        intQueue.enqueue(1)
        intQueue.enqueue(2)
        intQueue.enqueue(3)
        intQueue.enqueue(4)
        intQueue.enqueue(5)
        
        for int in intQueue {
            print(int)
        }
        
        XCTAssertTrue(true)
    }
}
