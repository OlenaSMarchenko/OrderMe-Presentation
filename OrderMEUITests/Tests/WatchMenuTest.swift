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
        XCTContext.runActivity(named: "Skip login without faebook") { _ in
            let loginScreen = LoginScreen()
            loginScreen.tapOnLoginLaterBtn()
        }
        
        XCTContext.runActivity(named: "Choose repablique restaurant") { _ in
            let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
            selectRestaurantScreen.tapOnRestaurant()
        }
        XCTContext.runActivity(named: "Watch menu") { _ in
            let restaurantScreen = RestaurantScreen()
            restaurantScreen.tapOnMenuBtn()
        }
        XCTContext.runActivity(named: "Return to the restaurant screen") { _ in
            let menuScreen = MenuScreen()
            menuScreen.tapOnBackBtn()
        }        
    }
}
