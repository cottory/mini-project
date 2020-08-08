//
//  ValidationChecker.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/06.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

final class ValidationChecker {
    
    static let numberLength:Int = 4
    
    private init() {}

    static func isNumericType(param candidate:String) -> Bool {
        for value in candidate {
            
            guard value.isNumber else {
                return false
            }
        }
        
        return true
    }
    
    static func isStartWithZero(number targetNumber:String) -> Bool {
        return (targetNumber[targetNumber.index(targetNumber.startIndex, offsetBy: 0)] == "0" ? true : false)
    }
    
    static func isRightSizeNumber(number targetNumber:Int) -> Bool {
        let numberSize:String = "\(targetNumber)"
        return (numberSize.count == numberLength ? true : false)
    }
    
    static func isDuplicatedNumber(number targetNumber:Int) -> Bool {
        
        var used:[Bool] = [Bool](repeating: false, count: 10)
        
        var loop:Int = targetNumber
        
        while loop != 0 {
            let number:Int = loop % 10
            
            guard used[used.index(used.startIndex, offsetBy: number)] == false else {
                return true
            }
            
            used[used.index(0, offsetBy: number)]  = true
            
            loop /= 10
        }
        return false
    }
    
    static func isValidateNumber(number targetNumber:String) -> Bool {
        
        guard isNumericType(param: targetNumber) else {
            Logger.mustEnterOnlyNumericType()
            return false
        }
        
        if isStartWithZero(number: targetNumber) {
            Logger.notEnterNumberStartByZero()
            return false
        }
        
        guard let number = Int(targetNumber) else {
            return false
        }
        
        guard isRightSizeNumber(number: number) else {
            Logger.mustEnterOnly4DigitNumber()
            return false
        }
        
        if isDuplicatedNumber(number: number) {
            Logger.notEnterDuplicateNumbers()
            return false
        }
    
        return true
    }
}
