//
//  ChooseTwoRestaurantsTest.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ChooseRestaurantsTest: BaseTest {
    
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
}
