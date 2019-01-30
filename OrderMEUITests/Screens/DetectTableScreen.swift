//
//  DetectTableScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectTableScreen: BaseScreen {
    
    private let tableNumberField: XCUIElement = textFields["tableNumberTextField"]
    private let selectTableBtn: XCUIElement = buttons["Select table"]
    
    override init() {
        super.init()
        visible()
    }
    
    func enterTableNumber(numberOfTable: Int) -> DetectTableScreen {
        type(numberOfTable.description, in: tableNumberField)
        return self
    }
    
    func tapOnSelectTableBtn()  {
        tap(selectTableBtn)
    }
}

// MARK: - Visibility
extension DetectTableScreen {
    func visible() {
        XCTAssertTrue(tableNumberField.waitForExistence(timeout: timeout), "Detect Table Screen is not presented")
    }
}
