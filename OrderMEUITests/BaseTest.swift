//
//  BaseTest.swift
//  OrderMEUITests
//
//  Created by Shanoj on 26/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    override func setUp() {
        //Put setup code here. This method is called before the invocation of each test method in the class.
        
        //In UI tests it is usually best to stop immediatly when a failure occurce.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        //Put teardown method code here. This method is called after the invocation of each test in the class
    }
    
    func testExample() {
        //Use recording to get started writing UI tests.
        //Use XCAssert and related functons to verify your tests produce the correct results.
    }
}
