//
//  NumberGenerator.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/06.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

final class NumberGenerator {
    
    private static let numberRange:Int = 10
    private static let numberSize:Int = 4
    
    private var numbers:[Bool] = [Bool].init(repeating: false, count: numberRange)
    
    public init() {}
    
    static func pickRandomSingleNumber() -> Int {
        return Int.random(in: 0..<10)
    }
    
    func usedNumber(number targetNumber:Int) -> Bool {
        numbers[numbers.index(numbers.startIndex, offsetBy: targetNumber)] = true
        return true
    }
    
    func isUsedNumber(number targetNumber:Int) -> Bool {
        return (numbers[numbers.index(numbers.startIndex, offsetBy: targetNumber)] == true ? true : false)
    }
    
    func generate() -> String {
        
        var result:String = ""
        var pickCount:Int = 0
        
        while pickCount != NumberGenerator.numberSize {
            let number:Int = NumberGenerator.pickRandomSingleNumber()
            
            if isUsedNumber(number: number) {
                continue;
            }
            else {
                usedNumber(number: number)
                result += "\(number)"
                pickCount += 1
            }
        }
        
        return result
    }
}
