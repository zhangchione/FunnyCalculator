//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 张驰 on 2019/8/3.
//  Copyright © 2019 张驰. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulator: Double?
    
    
    private enum Operation {
        case constant(Double)
        case unaryOperation((Double) -> (Double))
    }
    
    private var operations: Dictionary<String,Operation> = [
        "p":Operation.constant(Double.pi)
    ]
    mutating func performOperation(_ symbol: String) {
        if let operation = operations[symbol]{
            switch operation {
            case .constant(let value):
                    accumulator  = value
            case .unaryOperation(let function):
                    break
            }
        }
        
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    var result: Double? {
        get{
            return accumulator
        }
    }
    
}
