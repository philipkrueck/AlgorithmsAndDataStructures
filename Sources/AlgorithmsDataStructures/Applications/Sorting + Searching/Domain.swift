//
//  Domain.swift
//  
//
//  Created by Philip Krück on 09.07.20.
//

public struct Domain {
    
    let domainString: String
    var domainFields: [String] {
        domainString.split(separator: ".").map { String($0) }
    }
    var reverseDomainFields: [String] {
        domainFields.reversed()
    }
    
    public init(domainString: String) {
        self.domainString = domainString
    }
}

extension Domain: Comparable, Equatable {
    public static func < (lhs: Domain, rhs: Domain) -> Bool {
        for i in 0..<max(lhs.domainFields.count, rhs.domainFields.count) {
            if lhs.reverseDomainFields[0] == rhs.reverseDomainFields[i] {
                continue
            }
            
            return lhs.reverseDomainFields[i] < rhs.reverseDomainFields[i]
        }
        return false
    }
    
}
