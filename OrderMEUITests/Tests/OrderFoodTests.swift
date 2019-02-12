//
//  ReservationRestaurantTest.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class OrderFoodTests: BaseTest {
    
    func testOrderFoodWithoutLogin () {
        
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.republique)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let menuScreen = restaurantScreen.tapOnMenuBtn()
        menuScreen.tapOnPastaTypeOfFood()
        let dishesScreen = DishesScreen()
        dishesScreen.tapOnPlusMafaldineDishBtn()
        dishesScreen.tapOnBucketBtn()
        let bucketScreen = BucketScreen()
        bucketScreen.tapOnAcceptBtn()
        
        XCTAssertTrue(bucketScreen.choseATableAlertExists, "Choose a table does not exist")
        bucketScreen.tapOnOkBtn()
        
        let detectTableScreen = DetectTableScreen()
        detectTableScreen.enterTableNumber(numberOfTable: 2).tapOnSelectTableBtn()
        
        let bucketScreen2 = BucketScreen()
        bucketScreen2.tapOnAcceptBtn()
        
        XCTAssertTrue(bucketScreen.didNotLoginAlertExists, "You did not login does not exist")
        bucketScreen.tapOnCancelBtn()
    }
    
    func testFacebookLogin() {
  
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

        XCTAssertTrue(bucketScreen.choseATableAlertExists, "Choose a table does not exist")
        bucketScreen.tapOnOkBtn()

        let detectTableScreen = DetectTableScreen()
        detectTableScreen.enterTableNumber(numberOfTable: 2).tapOnSelectTableBtn()

        let bucketScreen2 = BucketScreen()
        bucketScreen2.tapOnAcceptBtn()
     }
}

