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
    
        func testMyFP1() {
        //Call a waiter to bring a menu
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.buttons["loginLaterButton"]/*[[".buttons[\"Login Later\"]",".buttons[\"loginLaterButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Ocean Seafood"]/*[[".cells.staticTexts[\"Ocean Seafood\"]",".staticTexts[\"Ocean Seafood\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()
        app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        app.buttons["Select table"].tap()
        collectionViewsQuery.cells["Call a waiter"].otherElements.containing(.image, identifier:"waiter").element.tap()
        app.alerts["The waiter is on his way"].buttons["Bring a menu"].tap()
        app.alerts["Got it!"].buttons["OK"].tap()
            }
    
    
            func testMyFP2() {
            //Choose two restaurants
            
            let app = XCUIApplication()
            app/*@START_MENU_TOKEN@*/.buttons["loginLaterButton"]/*[[".buttons[\"Login Later\"]",".buttons[\"loginLaterButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            let tablesQuery = app.tables
            tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Beauty & Essex"]/*[[".cells.staticTexts[\"Beauty & Essex\"]",".staticTexts[\"Beauty & Essex\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.buttons["Back 50"].tap()
            tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Ocean Seafood"]/*[[".cells.staticTexts[\"Ocean Seafood\"]",".staticTexts[\"Ocean Seafood\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            app.collectionViews.cells["Detect table"].otherElements.containing(.image, identifier:"qrcode").element.tap()
            app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            let key = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
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
