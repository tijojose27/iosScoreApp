//
//  Player.swift
//  iOsScoreApp
//
//  Created by Tijo Jose on 2/23/19.
//  Copyright © 2019 Tijo Jose. All rights reserved.
//

import Foundation

class Player {
    var score : Int = 0
    
    func incrementScore(){
        score = score+1
    }
    
    func decreaseScore(){
        if score>0{
            score = score - 1
        }
    }
    
    func getScore()->String{
        return String(score)
    }
    
    func reset(){
        score = 0
    }
}
