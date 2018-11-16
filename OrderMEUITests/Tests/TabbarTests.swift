//
//  TabbarAccessRestriction.swift
//  OrderMEUITests
//
//  Created by Olga on 10/20/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class TabbarTests: BaseTest {
    
    func testTabbarAccessRestriction() {
        
        let loginScreen = LoginScreen()
        loginScreen.skipLogin()
        
        let restaurantsListScreen = RestaurantsListScreen(name: romanov)
        let myReservationsScreen = restaurantsListScreen.goToReservations()
        myReservationsScreen.tapOnLoginButton()
        
        XCTAssertTrue(myReservationsScreen.youDidNotLoginAlertExists, "You did not login alert doesn't exist")
        
    }

}
