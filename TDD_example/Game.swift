//
//  Game.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import Foundation

class Game {
    
    var score:Int
    let brain = Brain()
    
    init() {
        score = 0
    }
    
    @discardableResult func play(_ move: Move) -> (right: Bool, score: Int) {
        
        let result = brain.check(score + 1)
        
        if result == move {
            score = score + 1
            return (true, score)
        }
        
        return (false, score)
    }

}
