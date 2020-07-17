//
//  ParanthesesTest.swift
//  
//
//  Created by Philip Krück on 11.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class ParanthesesTest: XCTestCase {
    
    func testValidParantheses() {
        XCTAssertTrue("[()]{}{[()()]()}".hasValidParanthesesSyntax)
        XCTAssertFalse("[(])".hasValidParanthesesSyntax)
    }
}

