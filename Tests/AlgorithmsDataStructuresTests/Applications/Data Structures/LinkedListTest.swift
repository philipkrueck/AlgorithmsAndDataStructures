//
//  LinkedListTest.swift
//
//
//  Created by Philip Krück on 11.07.20.
//

import XCTest
@testable import AlgorithmsDataStructures

final class LinkedListTest: XCTestCase {
    
    func testRemoveAfter() {
        // Given
        let lastNode = Node(element: 3)
        let middleNode = Node(element: 2, next: lastNode)
        let startNode = Node(element: 1, next: middleNode)
        let linkedList = LinkedList(startNode: startNode)
        
        
        // When
        linkedList.removeNode(after: startNode)
        
        // Then
        XCTAssertEqual(linkedList.startNode.next?.element, lastNode.element)
    }
    
    func testInsert() {
        // Given
        var linkedList = LinkedList(startNode: Node(element: 1))
        
        // When
        linkedList.insert(Node(element: 0))
        
        // Then
        XCTAssertEqual(linkedList.startNode.element, 0)
        XCTAssertEqual(linkedList.startNode.next?.element, 1)
    }
    
    func testRemove() {
        // Given
        let lastNode = Node(element: 2)
        let startNode = Node(element: 1, next: lastNode)
        var linkedList = LinkedList(startNode: startNode)
        
        // When
        linkedList.removeFirst()
        
        // Then
        XCTAssertEqual(linkedList.startNode.element, 2)
    }
    
    func testElements() {
        let lastNode = Node(element: 3)
        let middleNode = Node(element: 2, next: lastNode)
        let linkedList = LinkedList(startNode: Node(element: 1, next: middleNode))
        
        XCTAssertEqual(linkedList.elements, [1, 2, 3])
    }
    
    
}
