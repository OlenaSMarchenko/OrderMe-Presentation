//
//  FacebookScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 1/29/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class FacebookScreen: BaseScreen {
//    private let alertContinue = alerts["“OrderME” Wants to Use “facebook.com” to Sign In"]
//    private let alertContinueBtn = buttons["Continue"]
    
    private let emailOrPhoneField = app.webViews.textFields.element(boundBy: 0)
    private let passwordField = app.webViews.secureTextFields.element(boundBy: 0)
    private let loginBtn = buttons["Log In"]
    private let continueBtn = buttons["Continue"]
    
    func loginFacebook() {
        
        if continueBtn.waitForExistence(timeout: timeout) {
            tap(continueBtn)
            return
        }
        _ = emailOrPhoneField.waitForExistence(timeout: timeout)
        emailOrPhoneField.clear()
        type(TestUser.email, in: emailOrPhoneField)
        type(TestUser.password, in: passwordField)
        tap(loginBtn)
        tap(continueBtn)
    }
    
}


