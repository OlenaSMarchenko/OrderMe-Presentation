//
//  FacebookScreen.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 11/8/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class FacebookScreen: BaseScreen {

    private let alertContinue = app.alerts["“OrderME” Wants to Use “facebook.com” to Sign In"].buttons["Continue"]

    private let emailOrPhoneField = app.webViews.textFields.element(boundBy: 0)
    private let passwordField = app.webViews.secureTextFields.element(boundBy: 0)

    private let loginButton = app.buttons["Log In"]
    private let continueButton = app.buttons["Continue"]

    func login() {
        if continueButton.waitForExistence(timeout: timeout) {
            tap(continueButton)
            return
        }

        _ = emailOrPhoneField.waitForExistence(timeout: timeout)

        emailOrPhoneField.clear()
        type(TestUser.email, in: emailOrPhoneField)
        type(TestUser.password, in: passwordField)

        tap(loginButton)
        tap(continueButton)
    }

}
