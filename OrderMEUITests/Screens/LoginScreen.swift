//
//  LoginScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class LoginScreen: BaseScreen {
    
    private let loginLaterButton: XCUIElement = buttons["loginLaterButton"]
    private let loginFacebookBtn: XCUIElement = buttons["facebookLoginButton"]
    
    override init() {
        super.init()
        visible()
    }
     
    func tapOnLoginLaterBtn() { //func skipLogin()
        tap(loginLaterButton)
    }
    
    func tapOnFacebookBtn() { //func loginViaFacebook()
        tap(loginFacebookBtn)
        XCUIApplication().tap()
    }
}

// MARK: - Visibility
extension LoginScreen {
    func visible() {
        XCTAssertTrue(loginLaterButton.waitForExistence(timeout: timeout), "Login screen is not presented")
    }
}
