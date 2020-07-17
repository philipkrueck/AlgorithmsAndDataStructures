//
//  InsertionSortTest.swift
//  
//
//  Created by Philip Krück on 02.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class InsertionSortTest: XCTestCase {
    
    func testInsertionSort() {
        let listOne = [7, 1, 4, 2, 9, 3]
        let listTwo = [1, 2, 3, 4, 5, 6, 7]
        let randomList = (0...1000).map { _ in Int.random(in: 0...50000) }
        
        XCTAssertEqual(listOne.sorted(), listOne.insertionSorted())
        XCTAssertEqual(listTwo.sorted(), listTwo.insertionSorted())
        XCTAssertEqual(randomList.sorted(), randomList.insertionSorted())
    }
}
