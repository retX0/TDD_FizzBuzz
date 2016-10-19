//
//  BrainTests.swift
//  TDD_example
//
//  Created by xnxin on 2016/10/18.
//  Copyright © 2016年 xnxin. All rights reserved.
//

import XCTest
@testable import TDD_example

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByOne() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }

    func testIsDivisibleByFive() {
        XCTAssertEqual(true, brain.isDivisibleByFive(5))
    }
    
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertTrue(result == .fizz)
//        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(5);
        XCTAssertEqual(result, .buzz)
    }
    
    func testSayFizBuzz() {
        let res = brain.check(15)
        XCTAssertEqual(res, .fizzBuzz)
    }
    
    func testsayOne() {
        let resutlt = brain.check(1)
        XCTAssertEqual(resutlt, .number(1))
    }
    
}
