//
//  appendifuniqueTests.swift
//  appendifuniqueTests
//
//  Created by forCodeSake on 02/05/2016.
//  Copyright © 2016 forCodeSake. All rights reserved.
//

import XCTest
@testable import appendifunique

class appendifuniqueTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAppend() {
        self.measureBlock {
            Benchmarks.testAppendIfUnique(50000)
        }
    }
    
    func testArrayContains(){
        self.measureBlock {
            Benchmarks.testArrayContains(60000)
        }
    }
    
    func testSet(){
        self.measureBlock {
            Benchmarks.testNumbersSetToArray(60000)
        }
    }
    
}
