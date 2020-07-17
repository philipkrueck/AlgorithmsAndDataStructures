//
//  ThreeSum.swift
//  
//
//  Created by Philip Krück on 06.07.20.
//

/// Given an array of n integers, design an algorithm to determine whether any three of them sum to 0.
/// - Complexity: O(n^2*log(n)) where n is the number of elements in list
public func containsThreeSum(_ list: [Int]) -> Bool {
    guard list.count >= 3 else { return false }
    
    for i in 0..<list.count-2 {
        for j in i+1..<list.count-1 {
            let goalThirdSummand = 3 - list[i] - list[j]
            if let thirdSummandIndex = binarySearch(list: Array(list.suffix(from: j+1)), element: goalThirdSummand) {
                print("\(list[i]) + \(list[j]) + \(list[thirdSummandIndex]) = 3")
                return true
            }
        }
    }
    return false
}
