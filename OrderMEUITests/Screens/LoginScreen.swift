//
//  LoginScreen.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 10/25/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class LoginScreen: BaseScreen {
    
    private let loginLaterButton = app.buttons["loginLaterButton"]
    private let loginFacebookButton = app.buttons["facebookLoginButton"]

    override init() {
        super.init()
        visible()
    }

    func skipLogin() {
        tap(loginLaterButton)
    }

    func loginViaFacebook() {
        tap(loginFacebookButton)
        XCUIApplication().tap()
    }
}

// MARK: - Visibility

extension LoginScreen {
    private func visible() {
        XCTAssertTrue(loginLaterButton.waitForExistence(timeout: timeout), "LoginScreen is not visible")
    }
}
