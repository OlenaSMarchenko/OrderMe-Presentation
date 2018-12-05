//
//  BaseScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen {
    static let app = XCUIApplication()
    static let buttons = app.buttons
    
    func tap(_ element: XCUIElement) {
        element.tap()
    }
    
    func type(element: XCUIElement, text: String) {
        tap(element)
        element.typeText(text)
    }
}
