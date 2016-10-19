//
//  File.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import Foundation

enum Move {
    case number(Int)
    case fizz
    case buzz
    case fizzBuzz


}

extension Move: Equatable {
    
    static func ==(lhs: Move, rhs: Move) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz):
            return true
        case (.buzz, .buzz):
            return true
        case (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let a), .number(let b)):
            return a == b
        default:
            return false
        }
    }
}
