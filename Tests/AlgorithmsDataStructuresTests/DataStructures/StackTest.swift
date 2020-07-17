//
//  StackTest.swift
//
//
//  Created by Philip Krück on 02.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class StackTest: XCTestCase {
    
    func testStack() {
        var intStack = Stack<Int>()
        intStack.push(1)
        intStack.push(2)
        intStack.push(3)
        
        XCTAssertEqual(intStack.count, 3)
        XCTAssertEqual(intStack.pop(), 3)
        XCTAssertEqual(intStack.pop(), 2)
        XCTAssertEqual(intStack.pop(), 1)
        XCTAssertEqual(intStack.count, 0)
    }
}
