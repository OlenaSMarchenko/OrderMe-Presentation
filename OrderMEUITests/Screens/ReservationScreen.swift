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
    
    private let monthDayPicker = app.pickerWheels.element(boundBy: 0)
    private let hourPicker = app.pickerWheels.element(boundBy: 1)
    private let minutePicker = app.pickerWheels.element(boundBy: 2)
    private let amPmPicker = app.pickerWheels.element(boundBy: 3)
    
    private let phoneNumberField: XCUIElement = textFields["Phone number"]
    private let numberOfPeopleField: XCUIElement = textFields["Number of people"]
    private let didNotLoginAlert: XCUIElement = alerts["You did not login"]
    private let cancelBtn: XCUIElement = buttons["Cancel"]
    private let bookBtn: XCUIElement = buttons["Book"]
    private let pickADate = staticTexts["Pick a date"]
    
    func selectDate(month: String = "Jan",
                    day: String = "19",
                    hour: String = "10",
                    minute: String = "30",
                    amPm: AmPM = .pm) {
        let monthDay = "\(month) \(day)"
        monthDayPicker.adjust(toPickerWheelValue: monthDay)
        hourPicker.adjust(toPickerWheelValue: hour)
        minutePicker.adjust(toPickerWheelValue: minute)
        amPmPicker.adjust(toPickerWheelValue: amPm.rawValue)
    }
    
  
    
    override init() {
        super.init()
        visible()
    }
    
    var didNotLoginAlertExists: Bool {
        return didNotLoginAlert.waitForExistence(timeout: timeout)
    }

    @discardableResult
    func enterPhoneNumber(numberOfPhone: Int) -> ReservationScreen {
        type(element: phoneNumberField, text: numberOfPhone.description)
        return self
    }
    
    @discardableResult
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
