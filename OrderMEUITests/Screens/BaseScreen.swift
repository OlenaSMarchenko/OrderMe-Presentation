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
    static let alerts = app.alerts
    static let staticTexts = app.collectionViews.staticTexts
    static let textFields = app.textFields
    
    let timeout: TimeInterval = 5
    
    func tap(_ element: XCUIElement) {
        element.tap()
    }
    
    func type(_ text: String, in element: XCUIElement) {
        tap(element)
        element.typeText(text)
    }
}
