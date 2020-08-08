//
//  NumberGenerator.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/05.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

/*
 description:
 
 */
final class BallStirkeCalculator {
    
    private final let answer:String
    
    init(number:String) {
        answer = number
    }
    
    func getBallCount(targetNumber number: String ) -> Int {
        
        var ballCount:Int = 0
        
        for mynumberIdx in 0 ..< number.count {
            
            let myNumber:Character = number[number.index(number.startIndex, offsetBy: mynumberIdx)]
            
            //1st. numberCheck
            if answer.contains(myNumber) {
                //2nd. indexCheck
                
                var answerIdx:Int = 0
                for num in answer {
                    if myNumber == num {
                        break
                    }
                    else {
                        answerIdx += 1
                    }
                }
                
                if mynumberIdx != answerIdx {
                    ballCount += 1
                }
            }
            else {
                continue
            }
        }
        
        return ballCount
    }
    
    func getStrikeCount(targetNumber number: String) -> Int {
        
        var strikeCount:Int = 0
        
        for idx in 0 ..< number.count {
            let answerNumber:Character = answer[answer.index(answer.startIndex, offsetBy: idx)]
            let myNumber:Character = number[number.index(number.startIndex, offsetBy: idx)]

            if answerNumber == myNumber {
                strikeCount += 1
            }
        }
        
        return strikeCount
    }
}
