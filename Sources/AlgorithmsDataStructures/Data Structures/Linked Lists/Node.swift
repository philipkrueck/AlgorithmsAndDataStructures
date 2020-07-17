//
//  Node.swift
//  
//
//  Created by Philip Krück on 11.07.20.
//

public class Node<Element> {
    let element: Element
    var next: Node<Element>?
    
    init(element: Element, next: Node<Element>? = nil) {
        self.element = element
        self.next = next
    }
}

public struct LinkedList<Element> {
    public var startNode: Node<Element>
    
    public var elements: [Element] {
        var currentNode: Node<Element>? = startNode
        var elements = [Element]()
        
        while let currNode = currentNode {
            elements.append(currNode.element)
            currentNode = currNode.next
        }
        
        return elements
    }
    
    public func removeNode(after node: Node<Element>) {
        guard let nextNode = node.next else { return }
        
        node.next = nextNode.next
    }
    
    public mutating func insert(_ node: Node<Element>) {
        let oldStartNode = startNode
        self.startNode = node
        startNode.next = oldStartNode
    }
    
    public mutating func removeFirst() {
        guard let nextNode = startNode.next else { return }
        startNode = nextNode
    }
}

