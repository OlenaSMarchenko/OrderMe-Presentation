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
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }
    
    func testExample() {
        //Use recording to get started writing UI tests.
        //Use XCAssert and related functons to verify your tests produce the correct results.
    }
}