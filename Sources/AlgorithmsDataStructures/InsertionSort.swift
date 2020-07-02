//
//  InsertionSort.swift
//  
//
//  Created by Philip Krück on 02.07.20.
//

/// running time of O(n^2)
public func insertionSort<T: Comparable>(list: Array<T>) -> Array<T> {
    var sortedList = list
    
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

