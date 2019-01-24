//
//  MenuScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 12/11/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class MenuScreen: BaseScreen {
    
    private let bucketBtn: XCUIElement = buttons ["Bucket"]
    private let pastaTypeOfFood: XCUIElement = staticTexts ["PASTA"]
    
    override init() {
        super.init()
        visible()
    }
    
    func tapOnBucketBtn() {
        tap(bucketBtn)
    }
    
    func tapOnPastaTypeOfFood() {
        tap(pastaTypeOfFood)
    }
}

// MARK: - Visibility
extension MenuScreen {
    func visible() {
        XCTAssertTrue(bucketBtn.waitForExistence(timeout: timeout), "MenuScreen is not presented")
    }
}

// MARK: - BackProtocol
extension MenuScreen: BackProtocol { }

