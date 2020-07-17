//
//  InsertionSort.swift
//  
//
//  Created by Philip Krück on 02.07.20.
//

public extension Array {
    
    /// running time of O(n^2)
    func insertionSorted() -> Array<Element> where Element: Comparable {
        var sortedList = self
        
        for i in 1..<sortedList.count {
            innerloop: for j in (1...i).reversed() {
                if sortedList[j-1] > sortedList[j] {
                    sortedList.swapAt(j, j-1)
                } else {
                    break innerloop
                }
            }
        }
        
        return sortedList
    }

}

