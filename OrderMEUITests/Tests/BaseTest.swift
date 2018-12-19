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
    
    //Restaurants Names
    static let oceanSeafood = "Ocean Seafood"
    static let beautyEssex = "Beauty & Essex"
    static let republique = "Republique"
    static let hakkasan = "Hakkasan"
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }        
    
    func testChooseTwoRestaurants() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()

        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.beautyEssex)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        restaurantScreen.tapOnBackBtn()

        _ = SelectRestaurantScreen(restaurantName: BaseTest.oceanSeafood)
        selectRestaurantScreen.tapOnRestaurant()
        let detectTableScreen = restaurantScreen.tapOnDetectTable()
        detectTableScreen.enterTableNumber(numberOfTable: 6).tapOnSelectTableBtn()
    }
    
    func testWatchMenu() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let menuScreen = restaurantScreen.tapOnMenuBtn()
        menuScreen.tapOnBackBtn()
    }
    
    func testBookingTable () {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.hakkasan)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let reservationScreen = restaurantScreen.tapOnReservation()
        reservationScreen.enterPhoneNumber(numberOfPhone: 576797847).enterNumberOfPeople(numberOfPeople: 2)
        //reservationScreen.tapOnPickADate()
        
        reservationScreen.tapOnBookBtn()
        
        XCTAssertTrue(reservationScreen.didNotLoginAlertExists, "You did not login does not exist")
        reservationScreen.tapOnCancelBtn()
    }
}