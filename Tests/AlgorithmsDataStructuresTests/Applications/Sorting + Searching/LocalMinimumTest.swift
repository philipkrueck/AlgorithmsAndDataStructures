//
//  LocalMinimumTest.swift
//  
//
//  Created by Philip Krück on 09.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class LocalMinimumTest: XCTestCase {
    
    func testLocalMinimum() {
        let listOne = [9, 6, 3, 14, 15, 7, 4]
        let listTwo = [23, 8, 15, 16, 17]
        let listThree = [1, 2, 3]
        let listFour = [3, 2, 1]
        let emptyList = [Int]()
        
        XCTAssertEqual(listOne.localMinIndex(), 2)
        XCTAssertEqual(listTwo.localMinIndex(), 1)
        XCTAssertEqual(listThree.localMinIndex(), 0)
        XCTAssertEqual(listFour.localMinIndex(), 2)
        XCTAssertEqual(emptyList.localMinIndex(), nil)
    }
}
