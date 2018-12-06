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
    let oceanSeafood = "Ocean Seafood"
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testBringAMenu() {
        
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()

        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: oceanSeafood)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let detectTableScreen = restaurantScreen.tapOnDetectTable()
        let restaurantScreen2 = detectTableScreen.enterTableNumber(numberOfTable: 2).tapOnSelectTableBtn()
        restaurantScreen2.tapOnCallAWaiterBtn()
        restaurantScreen2.tapOnBringAMenuBtn()
        
        XCTAssertTrue(restaurantScreen2.gotItAlertExists, "Got it alert does not exist")
        restaurantScreen2.tapOnOkBtn()
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
//
//    func testWatchMenu() {
//        let loginLaterButton = app.buttons["loginLaterButton"]
//        loginLaterButton.tap()
//
//        let restaurant = app.tables.staticTexts["Republique"]
//        restaurant.tap()
//
//        app.collectionViews.textFields["Menu"].tap()
//
//        app.buttons["Back 50"].tap()
//    }
}
