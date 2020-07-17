//
//  ReverseDomainNameSortTest.swift
//  
//
//  Created by Philip Krück on 09.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class ReverseDomainNameSortTest: XCTestCase {
    
    let domains: [Domain] = ["philip.krueck.com", "awesomeness.express.io", "coolness.com"].map { Domain(domainString: $0) }
    
    func testReverseDomainFields() {
        XCTAssertEqual(domains[0].reverseDomainFields, ["com", "krueck", "philip"])
    }
    
    func testDomainComparable() {
        XCTAssertTrue(domains[0] < domains[1])
        XCTAssertFalse(domains[0] < domains[2])
    }
    
    func testDomainSorting() {
        let sortedDomainNameStrings = domains.sorted().map { $0.domainString }
        
        XCTAssertEqual(sortedDomainNameStrings, ["coolness.com", "philip.krueck.com", "awesomeness.express.io"])
    }
}
