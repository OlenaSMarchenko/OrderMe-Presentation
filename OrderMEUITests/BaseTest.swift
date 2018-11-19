//
//  BaseTest.swift
//  OrderMEUITests
//
//  Created by Shanoj on 26/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class orderMeTests: XCTestCase {
    
    override func setUp() {
        //Put inside code here. This method is valled before the invocation of each test method in the class.
        
        //In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        //UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        //Use recording to get started writing UI tests.
        //Use XCAssert and related to verify your tests produce the correct result.
    }
}
