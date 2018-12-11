//
//  SelectBackButtonScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 12/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class SelectBackButtonScreen: BaseScreen {
    
    private let selectBackBtn = buttons["Back 50"]
    
    override init() {
        super.init()
        visible()
    }
    
    func tapOnBackBtn() -> RestaurantScreen {
        tap(selectBackBtn)
        return RestaurantScreen()
    }
}

// MARK: - Visibility
extension SelectBackButtonScreen {
    func visible() {
        XCTAssertTrue(backBtn.waitForExistence(timeout: timeout), "SelectBackButtonScreen is not presented")
    }
}
