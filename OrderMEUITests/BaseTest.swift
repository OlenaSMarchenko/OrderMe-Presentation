//
//  BaseTest.swift
//  OrderMEUITests
//
//  Created by Shanoj on 26/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {       
        continueAfterFailure = false
        app.launch()
    }
    
    func testBringAMenu() {
        let loginLaterButton = app.buttons["loginLaterButton"]
        loginLaterButton.tap()
        
        let restaurant = app.tables.staticTexts["Ocean Seafood"]
        restaurant.tap()
        
        app.collectionViews.staticTexts["Detect table"].tap()
        
        app.textFields["tableNumberTextField"].tap()
        app.textFields["tableNumberTextField"].typeText("2")
        app.buttons["Select table"].tap()
        
        app.collectionViews.staticTexts["Call a waiter"].tap()
        app.alerts["The waiter is on his way"].buttons["Bring a menu"].tap()
        sleep(2)
        app.alerts["Got it!"].buttons["OK"].tap()
    }
    
    func testChooseTwoRestaurants() {
        let loginLaterButton = app.buttons["loginLaterButton"]
        loginLaterButton.tap()
        
        let restaurant = app.tables.staticTexts["Beauty & Essex"]
        restaurant.tap()
       
        app.buttons["Back 50"].tap()
        
        let restaurant2 = app.tables.staticTexts["Ocean Seafood"]
        restaurant2.tap()
        
        app.collectionViews.staticTexts["Detect table"].tap()
        
        app.textFields["tableNumberTextField"].tap()
        app.textFields["tableNumberTextField"].typeText("6")
        
        app.buttons["Select table"].tap()
    }
    
    func testWatchMenu() {
        let loginLaterButton = app.buttons["loginLaterButton"]
        loginLaterButton.tap()
        
        let restaurant = app.tables.staticTexts["Republique"]
        restaurant.tap()
        
        app.collectionViews.textFields["Menu"].tap()
        
        app.buttons["Back 50"].tap()                
    }
}
