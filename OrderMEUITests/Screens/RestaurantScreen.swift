//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 10/25/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class RestaurantScreen: BaseScreen {
    
    private let detectTable = app.collectionViews.staticTexts["Detect table"]
    private let callWaiter = app.collectionViews.staticTexts["Call a waiter"]
    private let reservation = app.collectionViews.staticTexts["Reservation"]
    private let bringAMenu = app.alerts["The waiter is on his way"].buttons["Bring a menu"]
    private let gotItAlert = app.alerts["Got it!"]
    private let backButton = app.buttons["Back 50"]
    private let menu = app.collectionViews.staticTexts["Menu"]

    var gotItAlertExists: Bool {
        return gotItAlert.waitForExistence(timeout: timeout)
    }

    override init() {
        super.init()
        visible()
    }

    func tapOnDetectTable() -> TableSelectionScreen {
        detectTable.tap()
        return TableSelectionScreen()
    }

    func tapOnCallAWaiter() -> RestaurantScreen {
        callWaiter.tap()
        return self
    }

    func tapOnBringAMenu() {
        bringAMenu.tap()
    }

    func tapOnReservation() -> ReservationScreen {
        tap(reservation)
        return ReservationScreen()
    }
    
    func tapOnMenu(category: String) -> CategoriesScreen {
        tap(menu)
        return CategoriesScreen()
    }
}

// MARK: - Visibility

extension RestaurantScreen {
    private func visible() {
        XCTAssertTrue(callWaiter.waitForExistence(timeout: timeout), "RestaurantScreen is not visible")
    }
}

// MARK: - BackProtocol

extension RestaurantScreen: BackProtocol { }
