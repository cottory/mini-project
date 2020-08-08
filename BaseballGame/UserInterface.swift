//
//  UserInterface.swift
//  BaseballGame
//
//  Created by 조찬영 on 2020/08/07.
//  Copyright © 2020 조찬영. All rights reserved.
//

import Foundation

final class UserInterface {
    
    public static func getUserNumber() -> String {
        let result:Optional<String> = readLine()
        
        guard let userNumber = result else {
            return "None"
        }
        
        return userNumber
    }
}
