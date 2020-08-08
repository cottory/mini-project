//
//  GameManager.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/06.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

//Driver Class
final class GameManager {

    static let START:String = "1"
    static let STOP:String = "2"
    static let INVALID_INPUT:String = "3"
    
    private init() {}
    
    public static func startGame() -> Void {
        
        let numberGenerator:NumberGenerator = NumberGenerator()
        var answerNumber:String
        var game:Game
        
        //1st.정답 숫자 생성
        repeat {
            answerNumber = numberGenerator.generate()
        } while ValidationChecker.isValidateNumber(number: answerNumber) == false
        
        Logger.showAnswerNumberGenerate()
        
        //2nd.숫자야구게임 생성
        game = Game(answer: answerNumber)
        
        //3rd.숫자 맞추기(play the game)
        repeat {
        
            //userInput
            Logger.getUserNumber()
            let userNumber:String = UserInterface.getUserNumber()
            if ValidationChecker.isValidateNumber(number: userNumber) == false {
                continue
            }
            
            game.setCandidateNumber(targetNumber: userNumber)

            if game.isAnswer() == true {
                break
            }
            else {
                game.increaseWrongCount()
                Logger.getCurrentStateOfGame(game: game)
            }
            
        } while game.isOpportunityLeft() == true
        
        
        //4th.print Result
        if game.isOpportunityLeft() == true {
            Logger.printSuccessCase(answerNumber: answerNumber)
        }
        else {
            Logger.printFailCase(answerNumber: answerNumber)
        }
        
        return
    }
    
    public static func isStartTheGame() -> String {
        
        Logger.getUserNumber()
        let userNumber:String = UserInterface.getUserNumber()
        
        if userNumber == self.START {
            return self.START
        }
        else if userNumber == self.STOP {
            return self.STOP
        }
        else {
            return self.INVALID_INPUT
        }
    }
    
    public static func showMainMenu() -> Void {
        Logger.showMainMenu()
        return
    }
    
    public static func exitTheGame() -> Void {
        Logger.exitTheGame()
        return
    }
    
    public static func throwErrorMessage() -> Void {
        Logger.mustEnterOnlyOneOrTwo()
        return
    }
}
