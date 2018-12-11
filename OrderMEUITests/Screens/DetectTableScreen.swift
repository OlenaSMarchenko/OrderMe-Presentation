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
    
    private let tableNumberField = app.textFields["tableNumberTextField"]
    private let selectTableBtn = buttons["Select table"]
    
    override init() {
        super.init()
        visible()
    }
    
    func enterTableNumber(numberOfTable: Int) -> DetectTableScreen {
        type(element: tableNumberField, text: numberOfTable.description)
        return self
    }
    
    func tapOnSelectTableBtn() -> RestaurantScreen {
        tap(selectTableBtn)
        return RestaurantScreen()
    }
}

// MARK: - Visibility
extension DetectTableScreen {
    func visible() {
        XCTAssertTrue(tableNumberField.waitForExistence(timeout: timeout), "Detect Table Screen is not presented")
    }
}
