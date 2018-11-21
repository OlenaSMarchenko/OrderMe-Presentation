//
//  MyReservationsScreen.swift
//  OrderMEUITests
//
//  Created by Pavel Ponomarev on 10/27/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class MyReservationsScreen: BaseScreen {
    
    private let youDidNotLoginAlert = app.alerts["You did not login"]
    private let loginButton = app.alerts["You did not login"].buttons["Login"]
    
    var youDidNotLoginAlertExists: Bool {
        return youDidNotLoginAlert.waitForExistence(timeout: timeout)
    }
    
    override init() {
        super.init()
    }
    
    func tapOnLoginButton() {
        tap(loginButton)
    }
}
