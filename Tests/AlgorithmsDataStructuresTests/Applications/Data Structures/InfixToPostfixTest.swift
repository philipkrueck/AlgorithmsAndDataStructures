//
//  InfixToPostfixTest.swift
//
//
//  Created by Philip Krück on 11.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class InfixToPostfixTest: XCTestCase {
    
    func testInfixToPostFix() {
        let infixExpressionOne = "a+b*c+d"
        let infixExpressionTwo = "a+b*(c^d-e)^(f+g*h)-i"
        
        XCTAssertEqual(infixExpressionOne.toPostFix, "abc*+d+")
        XCTAssertEqual(infixExpressionTwo.toPostFix, "abcd^e-fgh*+^*+i-")
    }
}

