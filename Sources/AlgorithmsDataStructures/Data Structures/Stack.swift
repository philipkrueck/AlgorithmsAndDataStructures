//
//  Stack.swift
//  
//
//  Created by Philip Krück on 11.07.20.
//


public struct Stack<Element> {
    
    /// The number of elements in the Stack.
    private(set) var count = 0
    
    private var firstNode: Node<Element>? = nil
    
    var last: Element? {
        firstNode?.element
    }
    
    /// This method adds an element to the top of the Stack.
    mutating func push(_ element: Element) {
        let secondNode = firstNode
        firstNode = Node(element: element, next: secondNode)
        count += 1
    }
    
    /// This method removes the top most element of the stack.
    mutating func pop() -> Element? {
        let element = firstNode?.element
        firstNode = firstNode?.next
        count -= 1
        return element
    }
    
    /// A boolean value indicating whether the collection is empty
    var isEmpty: Bool {
        return firstNode == nil
    }
}
