//
//  QuickSort.swift
//  
//
//  Created by Philip Krück on 06.07.20.
//


extension Array {
    
    /// This method sorts a list of n items.
    ///
    /// - Complexity: best and avg. case O(n*lg(n)), worst case O(n^2)
    func quickSorted() -> Array<Element> where Element: Comparable {
        var list = self
        return quickSort(&list, left: self.startIndex, right: self.endIndex-1)
    }
    
    private func quickSort<E: Comparable>(_ list: inout [E], left: Array<E>.Index, right: Array<E>.Index) -> [E] {
        guard left < right else { return list }
        
        let pivot = partion(&list, left: left, right: right)
        let _ = quickSort(&list, left: left, right: pivot-1)
        return quickSort(&list, left: pivot+1, right: right)
    }

    private func partion<E: Comparable>(_ list: inout [E], left: Array<E>.Index, right: Array<E>.Index) -> Array<E>.Index {
        let pivot = list[right]
        var i = left
        
        for j in i..<right {
            if list[j] <= pivot {
                list.swapAt(i, j)
                i += 1
            }
        }
        list.swapAt(i, right)
        return i
    }
}
