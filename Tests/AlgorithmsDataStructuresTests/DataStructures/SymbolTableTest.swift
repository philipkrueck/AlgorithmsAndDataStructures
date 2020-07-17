//
//  SymbolTableTest.swift
//  
//
//  Created by Philip Krück on 15.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class SymbolTableTest: XCTestCase {
    
    func testKeys() {
        var symbolTable = SymbolTable<Int, String>()
        symbolTable.put(key: 3, value: "three")
        symbolTable.put(key: 2, value: "two")
        symbolTable.put(key: 1, value: "one")
        
        var queue = symbolTable.keys
        
        XCTAssertEqual(queue.dequeue(), 1)
        XCTAssertEqual(queue.dequeue(), 2)
        XCTAssertEqual(queue.dequeue(), 3)
    }
    
    func testPutAndGet() {
        var symbolTable = SymbolTable<Int, String>()
        symbolTable.put(key: 3, value: "three")
        symbolTable.put(key: 2, value: "two")
        symbolTable.put(key: 1, value: "one")
        
        XCTAssertEqual(symbolTable.getValue(for: 1), "one")
        XCTAssertEqual(symbolTable.getValue(for: 2), "two")
        XCTAssertEqual(symbolTable.getValue(for: 3), "three")
    }

}
