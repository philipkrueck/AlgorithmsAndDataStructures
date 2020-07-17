//
//  Parantheses.swift
//  
//
//  Created by Philip Krück on 11.07.20.
//

public extension String {
    
    /// A boolean value indicating whether the String has valid opening and closing brace syntax
    var hasValidParanthesesSyntax: Bool {
        var charStack = Stack<Character>()
        
        for char in self {
            switch char {
            case "[", "(", "{":
                charStack.push(char)
            case "]":
                if charStack.pop() != "[" { return false }
            case ")":
                if charStack.pop() != "(" { return false }
            case "}":
                if charStack.pop() != "{" { return false }
            default: continue
            }
        }
        
        return charStack.isEmpty
    }
}
