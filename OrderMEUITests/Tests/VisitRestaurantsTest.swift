//
//  VisitRestaurantsTest.swift
//  OrderMEUITests
//
//  Created by Shanoj on 23/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class VisitRestaurantsTest: BaseTest {
    
    func testVisitTwoRestaurants() {
        
        let loginScreen = LoginScreen()
        loginScreen.skipLogin()
        
        var restaurantsListScreen = RestaurantsListScreen(name: beautyAndEssex)
        var restaurantScreen = restaurantsListScreen.tapOnRestaurant()
        restaurantScreen.tapOnBackButton()
        
        //Asserting search field to verify that user is on restaurant list screen,on tapping back button
        XCTAssertTrue(restaurantsListScreen.searchFieldExists, "Not on restaurant list screen")
        
        restaurantsListScreen = RestaurantsListScreen(name: hakkasan)
        restaurantScreen = restaurantsListScreen.tapOnRestaurant()
        let tableSelectionScreen = restaurantScreen.tapOnDetectTable()
        tableSelectionScreen.enter(tableNumber: 5)
            .tapOnSelectButton()
    }
    
}
