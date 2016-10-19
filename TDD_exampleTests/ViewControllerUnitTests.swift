//
//  ViewControllerUnitTests.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import XCTest
@testable import TDD_example

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMove1IncreasementsScore() {
        
        viewController.play(.number(1));
        viewController.play(.number(2));
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testPlayShouldReutnIfMoveRight() {
        let response = viewController.game!.play(.number(1))
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShoultReurnNewScore() {
        
        let response = viewController.game!.play(.number(1))
        XCTAssertNotNil(response.score)
    }
    
    func testFizzRight() {
        viewController.game!.score = 2
        let response = viewController.game!.play(.fizz)
        XCTAssertTrue(response.right)
        XCTAssertEqual(response.score, 3)
    }
    
    func testFizzWrong() {
        viewController.game!.score = 4
        let response = viewController.game!.play(.fizz)
        XCTAssertFalse(response.right)
        XCTAssertEqual(response.score, 4)
    }
    
    func testBuzzRight() {
        viewController.game!.score = 4
        let response = viewController.game!.play(.buzz)
        XCTAssertTrue(response.right)
        XCTAssertEqual(response.score, 5)
    }
    
    func testBuzzWrong() {
        viewController.game!.score = 8
        let response = viewController.game!.play(.buzz)
        XCTAssertFalse(response.right)
        XCTAssertEqual(response.score, 8)
    }
    
    func testFizzBuzzRight() {
        viewController.game!.score = 14
        let response = viewController.game!.play(.fizzBuzz)
        XCTAssertTrue(response.right)
        XCTAssertEqual(response.score, 15)
    }
    
    func testFizzBuzzWrong() {
        viewController.game!.score = 4
        let response = viewController.game!.play(.fizzBuzz)
        XCTAssertFalse(response.right)
        XCTAssertEqual(response.score, 4)
    }
}
