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
    
    func testMyFP2() {
        //Choose two restaurants
        app.buttons["loginLaterButton"].tap()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Beauty & Essex"].tap()
        app.buttons["Back 50"].tap()
        tablesQuery.staticTexts["Ocean Seafood"].tap()
        app.collectionViews.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()
        app.textFields["tableNumberTextField"].tap()
        let key = app.keys["6"]
        key.tap()
        app.buttons["Select table"].tap()
    }
    
    func testMyFP3() {
        // Watch a menu  
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.buttons["loginLaterButton"]/*[[".buttons[\"Login Later\"]",".buttons[\"loginLaterButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Republique"]/*[[".cells.staticTexts[\"Republique\"]",".staticTexts[\"Republique\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.collectionViews.cells["Menu"].otherElements.containing(.image, identifier:"list").element.tap()
        app.buttons["Back 50"].tap()                
    }
}
