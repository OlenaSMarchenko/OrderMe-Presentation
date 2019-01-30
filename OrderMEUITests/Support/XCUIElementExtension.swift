//
//  XCUIElementExtension.swift
//  OrderMEUITests
//
//  Created by Natalia on 1/29/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    func clear() {
        guard elementType == .textField || elementType == .secureTextField else {
            XCTFail("Applied clear function for a wrong type")
            return
        }
        
        tap()
        let deleteChar = XCUIKeyboardKey.delete.rawValue
        let deleteStr = String(repeating: deleteChar,  count: 30)
        typeText(deleteStr)
    }
}
