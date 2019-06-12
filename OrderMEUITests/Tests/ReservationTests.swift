//
//  BookingTableTest.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationTests: BaseTest {
    
    func testReservationWithoutLogin () {
        
        let loginScreen = LoginScreen()
        loginScreen.tapOnLoginLaterBtn()
        
        let selectRestaurantScreen = SelectRestaurantScreen(restaurantName: BaseTest.hakkasan)
        let restaurantScreen = selectRestaurantScreen.tapOnRestaurant()
        let reservationScreen = restaurantScreen.tapOnReservation()
        reservationScreen.enterPhoneNumber(numberOfPhone: 576797847).enterNumberOfPeople(numberOfPeople: 2)
        print("Here are all elements=>>>", XCUIApplication.debugDescription())
       
        let today = Date()
        guard let futureDate = today.plus(days: 3) else { XCTFail("Can't create future date"); return }
        reservationScreen.selectDate(month: futureDate.month, day: futureDate.day)
        //reservationScreen.tapOnPickADate()
        reservationScreen.tapOnBookBtn()
        
        XCTAssertTrue(reservationScreen.didNotLoginAlertExists, "You did not login does not exist")
        reservationScreen.tapOnCancelBtn()
    }
}
