//
//  DetectMenuScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 12/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectMenuScreen: BaseScreen {

    private let menuBtn = buttons["Menu"]
    
    override init() {
        super.init()
        visible()
    }

    func tapOnMenuBtn() -> RestaurantScreen {
        tap(menuBtn)
        return RestaurantScreen()
    }
}

// MARK: - Visibility
extension DetectMenuScreen {
    func visible() {
        XCTAssertTrue(menuBtn.waitForExistence(timeout: timeout), "DetectMenuScreen is not presented")
    }
}
