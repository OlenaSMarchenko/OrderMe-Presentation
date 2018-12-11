//
//  DetectReservationScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 12/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class ReservationScreen: BaseScreen {
    
    private let phoneNumberField = app.textFields["Phone number"]
    private let numberOfPeopleField = app.textFields["Number of people"]
    private let didNotLoginAlert: XCUIElement = app.alerts["You did not login"]
    private let cancelBtn = buttons["Cancel"]
    private let bookBtn = buttons["Book"]
    private let pickADate = app.staticTexts["Pick a date"]
    
    override init() {
        super.init()
        visible()
    }
    
    var didNotLoginAlertExists: Bool {
        return didNotLoginAlert.waitForExistence(timeout: timeout)
    }

    func enterPhoneNumber(numberOfPhone: Int) -> ReservationScreen {
        type(element: phoneNumberField, text: numberOfPhone.description)
        return self
    }
    
    func enterNumberOfPeople(numberOfPeople: Int) -> ReservationScreen {
        type(element: numberOfPeopleField, text: numberOfPeople.description)
        return self
    }
    
    func tapOnBookBtn() {
        tap(bookBtn)
    }
    
    func tapOnCancelBtn() {
        tap(cancelBtn)
    }
    
    func tapOnPickADate() {
        tap(pickADate)
    }
}

// MARK: - Visibility

extension ReservationScreen {
    func visible() {
        XCTAssertTrue(bookBtn.waitForExistence(timeout: timeout), "ReservationScreen is not presented")
    }
}
