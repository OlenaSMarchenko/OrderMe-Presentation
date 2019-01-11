//
//  WatchMenuTest.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class WatchMenuTest: BaseTest {
    
    func testWatchMenu() {
        
    let loginScreen = LoginScreen()
    loginScreen.tapOnLoginLaterBtn()
    
    let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
    let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
    let menuScreen = restaurantScreen.tapOnMenuBtn()
    menuScreen.tapOnBackBtn()
    }
}
