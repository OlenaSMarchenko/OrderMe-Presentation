//
//  WaitresTests.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/13/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class WaiterTests: BaseTest {
    
    func testBringAMenu() {
        
        XCTContext.runActivity(named: "Skip login without faebook") { _ in
            let loginScreen = LoginScreen()
            loginScreen.tapOnLoginLaterBtn()
        }
        
        XCTContext.runActivity(named: "Choose repablique restaurant") { _ in
            let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseStubTest.republique)
            selectRestaurantScreen.tapOnRestaurant()
        }
        
        XCTContext.runActivity(named: "Detect table") { _ in
            let restaurantScreen = RestaurantScreen()
            let detectTableScreen = restaurantScreen.tapOnDetectTable()
            detectTableScreen.enterTableNumber(numberOfTable: 2).tapOnSelectTableBtn()
        }
        
        XCTContext.runActivity(named: "Bring a menu") { _ in
            let restaurantScreen = RestaurantScreen()
            restaurantScreen.tapOnCallAWaiterBtn()
            restaurantScreen.tapOnBringAMenuBtn()
            XCTAssertTrue(restaurantScreen.gotItAlertExists, "Got it alert does not exist")
            restaurantScreen.tapOnOkBtn()
        }
    }


    func testWatchMenu() {
        
        XCTContext.runActivity(named: "Skip login") { _ in
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

