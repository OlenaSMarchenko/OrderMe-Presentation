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
    
    func tapOnLoginLaterBtn() {
        tap(loginLaterButton)
    }
}
