//
//  Game.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/06.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

final class Game {
    
    //Logger
    //NumberCalculator (갖다 쓸거임)
    
    private static let MAX_COUNT:Int = 10
    private var candidateNumber:String
    private let answerNumber:String
    private var wrongCount:Int
    private let ballStrikeCalculator:BallStirkeCalculator
    
    init(answer number:String) {
        answerNumber = number
        candidateNumber = ""
        wrongCount = 0
        ballStrikeCalculator = BallStirkeCalculator(number: answerNumber)
    }
    
    public func setCandidateNumber(targetNumber:String) -> Void {
        self.candidateNumber = targetNumber
    }
    
    public func isAnswer() -> Bool {
        return answerNumber == candidateNumber ? true : false
    }
    
    public func isOpportunityLeft() -> Bool {
        return self.wrongCount < Game.MAX_COUNT ? true : false
    }
    
    public func increaseWrongCount() -> Void {
        self.wrongCount += 1
        return
    }
    
    public func getWrongCount() -> Int {
        return self.wrongCount
    }
    
    public func getMaxCount() -> Int {
        return Game.MAX_COUNT
    }
    
    public func getBallCount() -> Int {
        return ballStrikeCalculator.getBallCount(targetNumber: candidateNumber)
    }
    
    public func getStrikeCount() -> Int {
        return ballStrikeCalculator.getStrikeCount(targetNumber: candidateNumber)
    }
}
