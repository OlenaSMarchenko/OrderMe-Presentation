//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class RestaurantScreen: BaseScreen {
    
    private let detectTableBtn: XCUIElement = app.collectionViews.staticTexts["Detect table"]
    private let callAWaiterBtn: XCUIElement = app.collectionViews.staticTexts["Call a waiter"]
    private let bringAMenuBtn: XCUIElement = buttons["Bring a menu"]
    private let gotItAlert: XCUIElement = app.alerts["Got it!"]
    private let okBtn: XCUIElement = buttons["OK"]
    
    var gotItAlertExists: Bool {
        return gotItAlert.exists
    }
    
    func tapOnDetectTable() {
        tap(detectTableBtn)
    }
    
    func tapOnCallAWaiterBtn() {
        tap(callAWaiterBtn)
    }
    
    func tapOnBringAMenuBtn() {
        tap(bringAMenuBtn)
    }
    
    func tapOnOkBtn() {
        tap(okBtn)
    }
}

