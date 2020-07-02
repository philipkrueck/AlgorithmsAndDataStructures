//
//  BinarySearchTest.swift
//  
//
//  Created by Philip Krück on 02.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class BinarySearchTest: XCTestCase {
    
    func testBinarySearch() {
        let intList = [1, 2, 3, 5, 6, 7]
        let stringList = ["one", "three", "two"]
        
        XCTAssertEqual(binarySearch(list: intList, element: 3), 2)
        XCTAssertEqual(binarySearch(list: stringList, element: "two"), 2)
        XCTAssertNil(binarySearch(list: intList, element: -1))
    }
}
