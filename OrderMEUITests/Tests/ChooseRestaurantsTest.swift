//
//  ChooseTwoRestaurantsTest.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ChooseRestaurantsTest: BaseStubTest {
    
    func testChooseTwoRestaurants() {
        
        XCTContext.runActivity(named: "Choose beautyEssex restaurant") { _ in
            let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
            selectRestaurantScreen.tapOnRestaurant()
        }
        
        XCTContext.runActivity(named: "Tap on back button") { _ in
            let restaurantScreen = RestaurantScreen()
            restaurantScreen.tapOnBackBtn()
        }
        
        XCTContext.runActivity(named: "Choose oceanSeafood restaurant") { _ in
            let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.oceanSeafood)
            selectRestaurantScreen.tapOnRestaurant()
        }
        
        XCTContext.runActivity(named: "Detect table") { _ in
            let restaurantScreen = RestaurantScreen()
            restaurantScreen.tapOnDetectTable()
            let detectTableScreen = DetectTableScreen()
            detectTableScreen.enterTableNumber(numberOfTable: 6).tapOnSelectTableBtn()
    }
  }
}
