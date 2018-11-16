//
//  ReservationTest.swift
//  OrderMEUITests
//
//  Created by Sergei Litovchenko on 10/22/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class ReservationTest: BaseTest {
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testReservation () {
        app.buttons["loginLaterButton"].tap()
        app.tables.staticTexts["Republique"].tap()
        app.collectionViews.staticTexts["Reservation"].tap()
        app.buttons["Book"].tap()
        app.alerts["We need your phone number"].buttons["OK"].tap()
        
    }

    func testPlayWithPickerWheel() {
        let loginScreen = LoginScreen()
        loginScreen.skipLogin()

        let restaurantsListScreen = RestaurantsListScreen(name: hakkasan)
        let restaurantScreen = restaurantsListScreen.tapOnRestaurant()
        let reservationScreen = restaurantScreen.tapOnReservation()
        let today = Date()
        guard let futureDate = today.plus(days: 43) else {
            XCTFail("Unable to create future date")
            return
        }
        let month = futureDate.month
        let day = futureDate.day

        reservationScreen.selectDate(month: month, day: day, amPm: .amTime)
    }
}
