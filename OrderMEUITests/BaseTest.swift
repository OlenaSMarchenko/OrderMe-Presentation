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
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()

        let selectRestaurantScreen = SelectRestaurantScreen()
        selectRestaurantScreen.tapOnRestaurant()
        
        let restaurantScreen = RestaurantScreen()
        restaurantScreen.tapOnDetectTable()
        
        let detectTableScreen = DetectTableScreen()
        detectTableScreen.enterTableNumber(numberOfTable: 2)
        detectTableScreen.tapOnSelectTableBtn()
        
        let restaurantScreen2 = RestaurantScreen()
        restaurantScreen2.tapOnCallAWaiterBtn()
        restaurantScreen2.tapOnBringAMenuBtn()
        
        sleep(2)
        XCTAssertTrue(restaurantScreen2.gotItAlertExists)
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
    
    func testWatchMenu() {
        let loginLaterButton = app.buttons["loginLaterButton"]
        loginLaterButton.tap()
        
        let restaurant = app.tables.staticTexts["Republique"]
        restaurant.tap()
        
        app.collectionViews.textFields["Menu"].tap()
        
        app.buttons["Back 50"].tap()                
    }
}
