//
//  SmokeTests.swift
//  OrderMEUITests
//
//  Created by Natalia on 6/11/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import XCTest

class SmokeTests: BaseTest {
    
    func testVerifyingLoginScreen() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
    }
    
    func testVerifyingSelectRestauranScreen() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        _ = SelectRestaurantScreen(restaurantName: BaseTest.republique)
    }
    
    func testVerifyingRestauranScreen() {
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurant = SelectRestaurantScreen(restaurantName: BaseTest.republique)
        selectRestaurant.tapOnRestaurant()
    }
}
