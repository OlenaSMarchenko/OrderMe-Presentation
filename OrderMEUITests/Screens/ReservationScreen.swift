//
//  ReservationScreen.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 10/29/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class ReservationScreen: BaseScreen {

    private let monthDayPicker = app.pickerWheels.element(boundBy: 0)
    private let hourPicker = app.pickerWheels.element(boundBy: 1)
    private let minutePicker = app.pickerWheels.element(boundBy: 2)
    private let amPmPicker = app.pickerWheels.element(boundBy: 3)

    override init() {
        super.init()
        visible()
    }

    func selectDate(month: String = "Nov",
                    day: String = "1",
                    hour: String = "10",
                    minute: String = "30",
                    amPm: AmPm = .pmTime) {
        let monthDay = "\(month) \(day)"
        monthDayPicker.adjust(toPickerWheelValue: monthDay)
        hourPicker.adjust(toPickerWheelValue: hour)
        minutePicker.adjust(toPickerWheelValue: minute)
        amPmPicker.adjust(toPickerWheelValue: amPm.rawValue)
    }

}

// MARK: - Visibility

extension ReservationScreen {
    private func visible() {
        XCTAssertTrue(monthDayPicker.waitForExistence(timeout: timeout), "ReservationScreen is not visible")
    }
}
