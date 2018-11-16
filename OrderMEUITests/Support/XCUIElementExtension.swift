//
//  XCUIElementExtension.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 11/12/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

extension XCUIElement {
    func clear() {
        guard elementType == .textField || elementType == .secureTextField else {
            XCTFail("Applied clear function for a wrong type")
            return
        }
        tap()
        let deleteChar = XCUIKeyboardKey.delete.rawValue
        let deleteStr = String(repeating: deleteChar, count: 30)
        typeText(deleteStr)
    }
}
