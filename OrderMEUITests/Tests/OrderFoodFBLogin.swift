//
//  OrderFoodW:FBLogin.swift
//  OrderMEUITests
//
//  Created by Olena on 1/30/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class OrderFoodFacebookLogin: BaseTest {
    
    func testOrderFoodWithFacebookLogin () {
        
        let loginScreen = LoginScreen()
        loginScreen.tapOnFacebookBtn()
        let facebookScreen = FacebookScreen()
        facebookScreen.loginFacebook()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let menuScreen = restaurantScreen.tapOnMenuBtn()
        menuScreen.tapOnPastaTypeOfFood()
        let dishesScreen = DishesScreen()
        dishesScreen.tapOnPlusMafaldineDishBtn()
        dishesScreen.tapOnBucketBtn()
        let bucketScreen = BucketScreen()
        bucketScreen.tapOnAcceptBtn()
    }
}


