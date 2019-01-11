//
//  BucketScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class BucketScreen: BaseScreen {
    
     private let acceptBtn: XCUIElement = buttons ["acceptButton"]
     private let chooseATableAlert: XCUIElement = alerts["Choose a table"]
     private let okBtn: XCUIElement = buttons["OK"]
     private let didNotLoginAlert: XCUIElement = alerts["You did not login"]
     private let cancelBtn: XCUIElement = buttons["Cancel"]
    
    
    override init() {
        super.init()
        visible()
    }
    
    func tapOnAcceptBtn() {
        tap(acceptBtn)
    }
    
    func tapOnOkBtn() {
        tap(okBtn)
    }
    
    var choseATableAlertExists: Bool {
        return chooseATableAlert.waitForExistence(timeout: timeout)
    }
    
    var didNotLoginAlertExists: Bool {
        return didNotLoginAlert.waitForExistence(timeout: timeout)
    }
    
    func tapOnCancelBtn() {
        tap(cancelBtn)
    }
}

// MARK: - Visibility
extension BucketScreen {
    func visible() {
        XCTAssertTrue(acceptBtn.waitForExistence(timeout: timeout), "BucketScreen is not presented")
    }
}

