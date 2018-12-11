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
    
    private let backBtn = buttons["Back 50"]
    private let bucketBtn = buttons ["Bucket"]
    
    override init() {
        super.init()
        visible()
    }
    
    func tapOnBackBtn() -> RestaurantScreen {
        tap(backBtn)
        return RestaurantScreen()
    }
    
    func tapOnBucketBtn() {
        tap(bucketBtn)
    }
}
//*
// MARK: - Visibility

extension MenuScreen {
    func visible() {
        XCTAssertTrue(bucketBtn.waitForExistence(timeout: timeout), "MenuScreen is not presented")
    }
}
