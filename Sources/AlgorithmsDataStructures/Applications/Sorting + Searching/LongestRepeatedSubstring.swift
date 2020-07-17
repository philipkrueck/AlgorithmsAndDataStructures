//
//  LongestRepeatedSubstring.swift
//  
//
//  Created by Philip Krück on 04.07.20.
//


/// O(n^2)
public func longestRepeatedSubstringBrute(in s: String) -> String {
    var lrs = ""
    
    for i in 0..<s.count {
        for j in i+1..<s.count {
            let endIndex = s.endIndex
            let iIndex = s.index(s.startIndex, offsetBy: i)
            let jIndex = s.index(s.startIndex, offsetBy: j)
            let lcp = longestCommonPrefix(String(s[iIndex..<endIndex]), String(s[jIndex..<endIndex]))
            if lcp.count > lrs.count {
                lrs = lcp
            }
        }
    }
    return lrs
}

/// O(n*log(n))
public func longestRepeatedSubstring(in s: String) -> String {
    let sortedSuffixes = suffixes(of: s).sorted()
    var lrs = ""
    
    for i in 0..<sortedSuffixes.count-1 {
        let lcp = longestCommonPrefix(sortedSuffixes[i], sortedSuffixes[i+1])
        if lcp.count > lrs.count {
            lrs = lcp
        }
    }
    return lrs
}

public func suffixes(of string: String) -> [String] {
    var suffixes: [String] = []
    
    for i in 0..<string.count {
        let startIndex = string.index(string.startIndex, offsetBy: i)
        suffixes.append(String(string[startIndex..<string.endIndex]))
    }
    return suffixes
}

public func longestCommonPrefix(_ a: String, _ b: String) -> String {
    let size = min(a.count, b.count)
    for i in 0..<size {
        if a.prefix(i+1) != b.prefix(i+1) {
            return String(a.prefix(i))
        }
    }
    return String(a.prefix(size))
}

