//
//  MergeSort.swift
//  
//
//  Created by Philip Krück on 03.07.20.
//

public extension Array {
    
    /// This method sorts a list of Comparable elements.
    ///
    /// - Complexity: O(n*log(n))
    func mergeSorted() -> Array<Element> where Element: Comparable {
        var slice = self[0..<self.endIndex]
        return Array(sort(&slice))
    }

    private func sort<T: Comparable>(_ slice: inout ArraySlice<T>) -> ArraySlice<T> {
        if slice.count <= 1 { return slice }
        
        let midIndex = slice.startIndex + (slice.endIndex - slice.startIndex) / 2
        let sortedFirstHalf = sort(&slice[slice.startIndex..<midIndex])
        let sortedSecondHalf = sort(&slice[midIndex..<slice.endIndex])
        
        return merged(originalSlice: &slice, sliceOne: sortedFirstHalf, sliceTwo: sortedSecondHalf)
    }

    private func merged<T: Comparable>(originalSlice: inout ArraySlice<T>, sliceOne: ArraySlice<T>, sliceTwo: ArraySlice<T>) -> ArraySlice<T> {
        guard originalSlice.startIndex...originalSlice.endIndex == sliceOne.startIndex...sliceTwo.endIndex else {
            fatalError("original slice must be exactly composed of sliceOne and sliceTwo")
        }
        
        var i = sliceOne.startIndex
        var j = sliceTwo.startIndex

        for k in sliceOne.startIndex..<sliceTwo.endIndex {
            if i == sliceTwo.startIndex {
                originalSlice[k] = sliceTwo[j]
                j += 1
            } else if j == sliceTwo.endIndex {
                originalSlice[k] = sliceOne[i]
                i += 1
            } else if sliceOne[i] < sliceTwo[j] {
                originalSlice[k] = sliceOne[i]
                i += 1
            } else {
                originalSlice[k] = sliceTwo[j]
                j += 1
            }
        }
        
        return originalSlice
    }
}
