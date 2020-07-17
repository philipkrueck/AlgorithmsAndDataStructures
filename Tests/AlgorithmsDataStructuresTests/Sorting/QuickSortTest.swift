//
//  QuickSortTest.swift
//  
//
//  Created by Philip Krück on 06.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class QuickSortTest: XCTestCase {
    
    func testQuickSort() {
        let listOne = [7, 1, 4, 2, 9, 3]
        let listTwo = [1, 2, 3, 4, 5, 6, 7]
        let randomList = (0...1000).map { _ in Int.random(in: 0...50000) }
        let emptyList = [Int]()
        
        XCTAssertEqual(listOne.sorted(), listOne.quickSorted())
        XCTAssertEqual(listTwo.sorted(), listTwo.quickSorted())
        XCTAssertEqual(randomList.sorted(), randomList.quickSorted())
        XCTAssertEqual([], emptyList.quickSorted())
    }
}
