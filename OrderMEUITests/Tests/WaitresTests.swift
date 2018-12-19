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
        
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.oceanSeafood)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let detectTableScreen = restaurantScreen.tapOnDetectTable()
        let restaurantScreen2 = detectTableScreen.enterTableNumber(numberOfTable: 2).tapOnSelectTableBtn()
        restaurantScreen2.tapOnCallAWaiterBtn()
        restaurantScreen2.tapOnBringAMenuBtn()
        
        XCTAssertTrue(restaurantScreen2.gotItAlertExists, "Got it alert does not exist")
        restaurantScreen2.tapOnOkBtn()
    }
}
