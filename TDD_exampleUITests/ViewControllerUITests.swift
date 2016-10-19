//
//  ViewControllerUITests.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncreamentScore() {
        XCUIApplication().buttons["play"].tap()
        let newScore = XCUIApplication().buttons["play"].label
        XCTAssertEqual(newScore, "1")
    }

    func testTapTwiceNumberButtonIncreamentScore() {
        let button = XCUIApplication().buttons["play"];
        button.tap()
        button.tap()
        let newScore = XCUIApplication().buttons["play"].label
        XCTAssertEqual(newScore, "2")
    }
    
    func testFizzButtonIncreamentScore() {
        
        let numberButton = XCUIApplication().buttons["play"];
        numberButton.tap()
        numberButton.tap()
        
        let fizzButton = XCUIApplication().buttons["fizzButton"];
        fizzButton.tap()
        let newScore = XCUIApplication().buttons["play"].label
        XCTAssertEqual(newScore, "3")
    }
    
    func testBuzzButtonIncreamentScore() {
        
        let numberButton = XCUIApplication().buttons["play"];
        numberButton.tap()
        numberButton.tap()
        
        let fizzButton = XCUIApplication().buttons["fizzButton"];
        fizzButton.tap()
        
        numberButton.tap()
        
        let buzzButton = XCUIApplication().buttons["buzzButton"];
        buzzButton.tap()
        let newScore = XCUIApplication().buttons["play"].label
        XCTAssertEqual(newScore, "5")
    }
    
    func testPlayAgaion () {
        
        let numberButton = XCUIApplication().buttons["play"];
        numberButton.tap()
        numberButton.tap()
        
        let playButton = XCUIApplication().buttons["playagain"];
        playButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
//    func testFizzBuzzButtonIncreamentScore() {
//        
//        let numberButton = XCUIApplication().buttons["play"];
//        numberButton.tap()
//        numberButton.tap()
//        
//        let fizzButton = XCUIApplication().buttons["fizzButton"];
//        fizzButton.tap()
//        
//        numberButton.tap()
//        
//        let buzzButton = XCUIApplication().buttons["buzzButton"];
//        buzzButton.tap()
//        let newScore = XCUIApplication().buttons["play"].label
//        XCTAssertEqual(newScore, "5")
//    }
}
