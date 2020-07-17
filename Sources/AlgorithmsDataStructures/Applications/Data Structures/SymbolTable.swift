//
//  SymbolTable.swift
//  
//
//  Created by Philip Krück on 13.07.20.
//

/// Symbol Table implementation built on a binary search tree.
struct SymbolTable<Key, Value> where Key: Comparable {
    
    private var rootNode: Node? = nil
    
    public var keys: Queue<Key> {
        var queue = Queue<Key>()
        return ordered(node: rootNode, queue: &queue)
    }
    
    private func ordered(node: Node?, queue: inout Queue<Key>) -> Queue<Key> {
        guard let node = node else { return queue }
        queue = ordered(node: node.left, queue: &queue)
        queue.enqueue(node.key)
        queue = ordered(node: node.right, queue: &queue)
        return queue
    }
    
    /// - Complexity: O(lg(n))
    public mutating func put(key: Key, value: Value) {
        rootNode = put(node: rootNode, key: key, value: value)
    }
    
    private func put(node: Node?, key: Key, value: Value) -> Node {
        guard let node = node else { return Node(key: key, value: value) }
        if key < node.key {
            node.left = put(node: node.left, key: key, value: value)
        } else if key > node.key {
            node.right = put(node: node.right, key: key, value: value)
        } else {
            node.value = value
        }
        return node
    }
    
    /// - Complexity: O(lg(n))
    public func getValue(for key: Key) -> Value? {
        getValue(node: rootNode, key: key)
    }
    
    private func getValue(node: Node?, key: Key) -> Value? {
        guard let node = node else { return nil }
        if key < node.key {
            return getValue(node: node.left, key: key)
        } else if key > node.key {
            return getValue(node: node.right, key: key)
        }
        return node.value
    }
    
    /// - Complexity: O(1)
    public func containsKey(_ key: Key) -> Bool {
        getValue(for: key) != nil
    }
    
    /// - Complexity: O(lg(n))
    public var isEmpty: Bool {
        rootNode == nil
    }
    
    /// - Complexity: O(1)
    public var count: Int {
        keys.count
    }

}

extension SymbolTable {
    class Node {
        var key: Key
        var value: Value
        var left: Node?
        var right: Node?
        
        init(key: Key, value: Value) {
            self.key = key
            self.value = value
        }
    }

}
