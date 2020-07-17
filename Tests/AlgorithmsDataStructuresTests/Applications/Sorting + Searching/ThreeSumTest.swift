//
//  ThreeSumTest.swift
//  
//
//  Created by Philip Krück on 06.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class ThreeSumTest: XCTestCase {
    
    func testThreeSum() {
        let listOne = [1, 2, 3, 5, 6, 7]
        let listTwo = [1, 1, 1]
        let listThree = [-10, 0, 5, 3, 8, 5]
        let listFour = [-10, 0, 5, 1, -4, 6]
        let emptyList = [Int]()
        
        
        XCTAssertFalse(containsThreeSum(listOne))
        XCTAssertTrue(containsThreeSum(listTwo))
        XCTAssertTrue(containsThreeSum(listThree))
        XCTAssertTrue(containsThreeSum(listFour))
        XCTAssertFalse(containsThreeSum(emptyList))
    }
}

