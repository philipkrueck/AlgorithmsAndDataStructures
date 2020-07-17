//
//  Queue.swift
//  
//
//  Created by Philip Krück on 11.07.20.
//

public struct Queue<Element> {
    
    /// The number of elements in the Stack.
    private(set) var count = 0
    private var firstNode: Node<Element>? = nil
    
    
    /// This method enqueues and element to the queue.
    ///
    /// - Complexity: 
    mutating func enqueue(_ element: Element) {
        let newNode = Node(element: element)
        
        if let firstNode = firstNode {
            var lastNode = firstNode
            
            while(lastNode.next != nil) {
                lastNode = lastNode.next!
            }
            lastNode.next = newNode
        } else {
            firstNode = newNode
        }
        count += 1
    }
    
    /// This method removes the first element enqueued in the queue.
    mutating func dequeue() -> Element? {
        let element = firstNode?.element
        firstNode = firstNode?.next
        count -= 1
        return element
    }
    
    /// A boolean value indicating whether the collection is empty
    var isEmpty: Bool {
        return count == 0
    }
    
}

public struct QueueIterator<Element>: IteratorProtocol {
    
    var currNode: Node<Element>?
    
    public mutating func next() -> Element? {
        let lastNode = currNode
        currNode = currNode?.next
        return lastNode?.element
    }
    
}

extension Queue: Sequence {
    public func makeIterator() -> QueueIterator<Element> {
        QueueIterator(currNode: firstNode)
    }
}
