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
    private let menuBtn: XCUIElement = app.collectionViews.staticTexts["Menu"]
    private let reservationBtn: XCUIElement = app.collectionViews.staticTexts["Reservation"]
    private let bringAMenuBtn: XCUIElement = buttons["Bring a menu"]
    private let gotItAlert: XCUIElement = app.alerts["Got it!"]
    private let okBtn: XCUIElement = buttons["OK"]
    private let backBtn: XCUIElement = buttons["Back 50"]
    
    override init() {
        super.init()
        visible()
    }
   
    var gotItAlertExists: Bool {
        return gotItAlert.waitForExistence(timeout: timeout)
    }
    
    func tapOnDetectTable() -> DetectTableScreen {
        tap(detectTableBtn)
        return DetectTableScreen()
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
    
    func tapOnMenuBtn() -> MenuScreen {
        tap(menuBtn)
        return MenuScreen()
    }
    
    func tapOnBackBtn() {
        tap(backBtn)
    }
    
    func tapOnReservation() -> ReservationScreen {
        tap(reservationBtn)
        return ReservationScreen()
    }
}
//****
// MARK: - Visibility
extension RestaurantScreen {
    func visible() {
        XCTAssertTrue(callAWaiterBtn.waitForExistence(timeout: timeout), "Restaurant screen is not presented")
    }
}
