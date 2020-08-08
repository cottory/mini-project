//
//  Logger.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/06.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

final class Logger {
    
    public static func mustEnterOnly4DigitNumber() -> Void {
        print("올바른 입력 형식이 아닙니다.(네 자리 숫자만 입력하세요)")
    }
    
    public static func mustEnterOnlyNumericType() -> Void {
        print("올바른 입력 형식이 아닙니다.(0~9 사이의 숫자만 입력하세요)")
    }
    
    public static func notEnterNumberStartByZero() -> Void {
        print("올바른 입력 형식이 아닙니다.(0으로 시작하는 숫자는 입력할 수 없습니다)")
    }
    
    public static func notEnterDuplicateNumbers() -> Void {
        print("중복된 숫자가 있습니다. 모든 숫자는 한 번만 사용할 수 있습니다.")
    }
    
    public static func mustEnterOnlyOneOrTwo() -> Void {
        print("올바른 입력 형식이 아닙니다. 1 또는 2만 입력하세요")
    }
    
    public static func showMainMenu() -> Void {
        print("=======================")
        print("=======Main menu=======")
        print("=======1.게임시작========")
        print("=======2.게임종료========")
        print("=======================")
    }
    
    public static func getCurrentStateOfGame(game:Game) -> Void {
        print("=======================")
        print("==========결과==========")
        print("\(game.getStrikeCount())S\(game.getBallCount())B")
        print("틀린횟수: \(game.getWrongCount())회, 남은횟수: \(game.getMaxCount() - game.getWrongCount())회")
        print("=======================")
    }
    
    //성공 케이스
    public static func printSuccessCase(answerNumber: String) -> Void {
        print("성공입니다. 정답 숫자는 \(answerNumber)입니다.")
    }
    
    //실패 케이스
    public static func printFailCase(answerNumber: String) -> Void {
        print("실패입니다. 정답 숫자는 \(answerNumber)입니다.")
    }
    
    //게임 종료시
    public static func exitTheGame() -> Void {
        print("게임을 종료합니다.")
    }
    
    public static func getUserNumber() -> Void {
        print("숫자를 입력하세요: ", terminator: "")
    }
    
    public static func showAnswerNumberGenerate() -> Void {
        print("정답 숫자가 생성되었습니다.")
    }
}
