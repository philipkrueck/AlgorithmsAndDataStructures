//
//  LocalMinimum.swift
//  
//
//  Created by Philip Krück on 09.07.20.
//

public extension Array {
    
    /// A binary search based algorithm to find the local minimum in an array
    ///
    /// - Complexity: O(log(n))
    func localMinIndex() -> Array<Int>.Index? where Element == Int {
        guard !self.isEmpty else { return nil }
        
        return localMinIndexUtil(list: self, startIndex: self.startIndex, endIndex: self.endIndex)
    }
    
    private func localMinIndexUtil(list: Array<Int>, startIndex: Array.Index, endIndex: Array.Index) -> Array<Int>.Index {
        let midIndex = startIndex + (endIndex - startIndex) / 2
        
        if (midIndex == 0 && list[midIndex] < list[midIndex+1]) || (midIndex == list.count-1 && list[midIndex-1] > list[midIndex]) || (list[midIndex-1] > list[midIndex] && list[midIndex+1] > list[midIndex]) {
            return midIndex
        } else if midIndex < list.count-1 && list[midIndex] > list[midIndex+1]{
            return localMinIndexUtil(list: list, startIndex: midIndex+1, endIndex: endIndex)
        }
        
        return localMinIndexUtil(list: list, startIndex: startIndex, endIndex: midIndex)
    }
}
