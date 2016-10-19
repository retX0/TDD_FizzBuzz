//
//  GameTests.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import XCTest
@testable import TDD_example

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testStartAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlaySocreIncremented() {
        game.play(.number(1))
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(.fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(.fizz)
        let result = response.right
        XCTAssertTrue(result == true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(.fizz).right
        XCTAssertTrue(result == false)
    }
    
    func testFizzRight() {
        game.score = 2
        XCTAssertTrue(game.play(.fizz).right)
    }
    
    func testFizzWrong() {
        game.score = 55
        XCTAssertTrue(game.play(.fizz).right == false)
    }
    
    func testBuzzRight() {
        game.score = 4
        XCTAssertTrue(game.play(.buzz).right)
    }
    
    func testBuzzWrong() {
        game.score = 6
        XCTAssertTrue(game.play(.buzz).right == false)
    }
    
    func testFizzBuzzRight() {
        game.score = 14
        XCTAssertTrue(game.play(.fizzBuzz).right)
    }
    
    func testFizzBuzzWrong() {
        game.score = 16
        XCTAssertTrue(game.play(.fizzBuzz).right == false)
    }
}
