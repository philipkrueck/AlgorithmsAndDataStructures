//
//  File.swift
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
        
        XCTAssertEqual(listOne.sorted(), insertionSort(list: listOne))
        XCTAssertEqual(listTwo.sorted(), insertionSort(list: listTwo))
    }
}
