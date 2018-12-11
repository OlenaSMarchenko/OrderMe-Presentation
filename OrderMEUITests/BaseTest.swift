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
    let beautyEssex = "Beauty & Essex"
    let republique = "Republique"
    let hakkasan = "Hakkasan"
    
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
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()

        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: beautyEssex)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        restaurantScreen.tapOnBackBtn()
        
        _ = SelectRestaurantScreen(restaurantName: oceanSeafood)
        _ = selectRestaurantScreen.tapOnRestaurant()
        let detectTableScreen = restaurantScreen.tapOnDetectTable()
        _ = detectTableScreen.enterTableNumber(numberOfTable: 6).tapOnSelectTableBtn()
    }

    
    func testWatchMenu() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: republique)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        _ = restaurantScreen.tapOnDetectMenu()
        _ = restaurantScreen.tapOnBackBtn()
    }
    
    func testBookingTable () {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: hakkasan)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let detectReservationScreen = restaurantScreen.tapOnDetectReservation()
        _ = detectReservationScreen.enterPhoneNumber(numberOfPhone: 3109876543).tapOnSelectPhoneNumberBtn()
        _ = detectReservationScreen.enterPhoneNumber(numberOfPhone: 3).tapOnSelectNumberOfPeopleBtn()
        
//        app.staticTexts["Pick a date"].tap()
//        app.buttons["Book"].tap(

    }
}
