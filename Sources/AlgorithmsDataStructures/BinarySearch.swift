//
//  BinarySearch.swift
//  
//
//  Created by Philip Krück on 02.07.20.
//


/// binary search expects a sorted list
public func binarySearch<T: Comparable>(list: Array<T>, element: T)-> Int? {
    search(list: list, element: element, startIndex: 0, endIndex: list.count)
}

private func search<T: Comparable>(list: Array<T>, element: T, startIndex: Int, endIndex: Int) -> Int? {
    guard startIndex < endIndex else { return nil }
    
    let middleIndex = startIndex + (endIndex - startIndex) / 2
    
    if list[middleIndex] < element {
        return search(list: list, element: element, startIndex: middleIndex + 1, endIndex: endIndex)
    } else if list[middleIndex] > element {
        return search(list: list, element: element, startIndex: startIndex, endIndex: middleIndex)
    } else {
        return middleIndex
    }
}
