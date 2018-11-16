//
//  TableSelectionScreen.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 10/25/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class TableSelectionScreen: BaseScreen {

    private let numberTextField =  app.textFields["tableNumberTextField"]
    private let selectButton = app.buttons["Select table"]

    override init() {
        super.init()
        visible()
    }

    @discardableResult
    func enter(tableNumber: Int) -> TableSelectionScreen {
        type(tableNumber.description, in: numberTextField)
        return self
    }

    @discardableResult
    func tapOnSelectButton() -> RestaurantScreen {
        tap(selectButton)
        return RestaurantScreen()
    }
}

// MARK: - Visibility

extension TableSelectionScreen {
    private func visible() {
        XCTAssertTrue(numberTextField.waitForExistence(timeout: timeout), "TableSelectionScreen is not visible")
    }
}
