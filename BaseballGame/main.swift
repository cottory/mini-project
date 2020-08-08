//
//  main.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/05.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation


while true {
    
    GameManager.showMainMenu()
    
    let flag:String = GameManager.isStartTheGame()
    
    if (flag == GameManager.START) == true {
        GameManager.startGame()
    }
    else if ((flag == GameManager.STOP) == true) {
        break
    }
    else {
        GameManager.throwErrorMessage()
        continue
    }
}

GameManager.exitTheGame()

