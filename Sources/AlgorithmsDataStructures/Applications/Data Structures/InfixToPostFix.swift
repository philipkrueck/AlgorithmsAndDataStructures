//
//  InfixToPostFix.swift
//  
//
//  Created by Philip Krück on 12.07.20.
//

public extension String {
    
    /// Assumes that self is a valid infix expression.
    var toPostFix: String? {
        guard self.hasValidParanthesesSyntax else { return nil }
        
        var output = ""
        var operatorStack = Stack<Character>()
        
        for c in self {
            if c == ")" {
                while let lastOperator = operatorStack.pop(), lastOperator != "(" {
                    output.append(lastOperator)
                }
            } else if c.isOperator || c == "(" {
                if let lastOperator = operatorStack.last, lastOperator.takesPrecedence(over: c) {
                    while !operatorStack.isEmpty && operatorStack.last != "(" {
                        output.append(operatorStack.pop()!)
                    }
                }
                operatorStack.push(c)
            } else {
                output.append(c)
            }
        }
        
        while !operatorStack.isEmpty {
            output.append(operatorStack.pop()!)
        }
        
        return output
    }
}

extension Character {
    var isOperator: Bool {
        "+-*/^".contains(self)
    }
    
    func takesPrecedence(over operand: Character) -> Bool {
        "*/^".contains(self) && "+-".contains(operand)
    }
}
