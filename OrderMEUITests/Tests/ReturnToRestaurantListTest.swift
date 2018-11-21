//
//  ReturnToRestaurantListTest.swift
//  OrderMEUITests
//
//  Created by ALEXEY LI on 10/26/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class ReturnToRestaurantListTest: BaseTest {

    let category = "FISH"
    let dish = "CHANNEL ISLANDS ROCK FISH"
    
    func testReturnToRestaurantList() {
        let loginScreen = LoginScreen()
        loginScreen.skipLogin()
        
        let restaurantsListScreen = RestaurantsListScreen(name: republique)
        var restaurantScreen = restaurantsListScreen.tapOnRestaurant()
        var categoriesScreen = restaurantScreen.tapOnMenu(category: category)
        let dishesScreen = categoriesScreen.tapOn(category: category)
        categoriesScreen = dishesScreen.tapOnBackButton()
        restaurantScreen = categoriesScreen.tapOnBackButton()
        restaurantScreen.tapOnBackButton()
        XCTAssertTrue(restaurantsListScreen.searchFieldExists, "Not on restaurant list screen")
    }
}
