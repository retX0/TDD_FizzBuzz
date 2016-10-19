//
//  Brain.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import UIKit

class Brain: NSObject {

    
    func isDivisible(_ number:Int ,by anthoernumber:Int) ->Bool {
        return number % anthoernumber == 0
    }
    
    func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisible(number, by: 3)
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisible(number, by: 5)
    }
    
    func check(_ number: Int) -> Move {
        
        if isDivisible(number, by: 15) {
            return .fizzBuzz
        }
        
        if isDivisible(number, by: 3) {
            return .fizz
        }
        
        if isDivisible(number, by: 5) {
            return .buzz
        }
        return .number(number)
    }
}
