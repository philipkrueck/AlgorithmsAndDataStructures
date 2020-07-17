//
//  LongestRepeatedSubstringTest.swift
//  
//
//  Created by Philip Krück on 04.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class LongestRepeatedSubstringTest: XCTestCase {
    
    func testLongestCommonPrefix() {
        let a = "aagasdg"
        let b = "aagdjgh"
        let c = "qeq"
        let d = ""
        let e = "qeq"
        
        XCTAssertEqual(longestCommonPrefix(a, b), "aag")
        XCTAssertEqual(longestCommonPrefix(b, c), "")
        XCTAssertEqual(longestCommonPrefix(a, d), "")
        XCTAssertEqual(longestCommonPrefix(c, e), "qeq")
    }
    
    func testLRSBrute() {
        let string = "aacaagtttacaagc"
        
        XCTAssertEqual(longestRepeatedSubstringBrute(in: string), "acaag")
    }
    
    func testSuffixes() {
        let string = "aacaa"
        let suffixesArray = ["aacaa", "acaa", "caa", "aa", "a"]
        
        XCTAssertEqual(suffixes(of: string), suffixesArray)
    }
    
    func testLRS() {
        let string = "aacaagtttacaagc"
        
        XCTAssertEqual(longestRepeatedSubstring(in: string), "acaag")
    }
}

