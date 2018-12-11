//
//  DetectReservationScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 12/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectReservationScreen: BaseScreen {
    
    private let phoneNumberField = app.textFields["phoneNumberTextField"]
    private let selectPhoneNumberBtn = buttons["Phone number"]
    private let numberOfPeopleField = app.textFields["numberOfPeopleTextField"]
    private let selectNumberOfPeoplerBtn = buttons["Number of people"]

    override init() {
    super.init()
    visible()
    }

    func enterPhoneNumber(numberOfPhone: Int) -> DetectReservationScreen {
    type(element: phoneNumberField, text: numberOfPhone.description)
    return self
    }

    func tapOnSelectPhoneNumberBtn() -> RestaurantScreen {
    tap(selectPhoneNumberBtn)
    return RestaurantScreen()
    }
    
    func enterNumberOfPeople(numberOfPeople: Int) -> DetectReservationScreen {
        type(element: numberOfPeopleField, text: numberOfPeople.description)
        return self
    }
    
    func tapOnSelectNumberOfPeopleBtn() -> RestaurantScreen {
        tap(selectNumberOfPeoplerBtn)
        return RestaurantScreen()
    }
}

// MARK: - Visibility
extension DetectReservationScreen {
    func visible() {
        XCTAssertTrue(phoneNumberField.waitForExistence(timeout: timeout), "DetectReservationScreen is not presented")
    }
}
