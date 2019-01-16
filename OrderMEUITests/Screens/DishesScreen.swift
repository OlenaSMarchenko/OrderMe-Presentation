//
//  DishesScreen.swift
//  OrderMEUITests
//
//  Created by Olena on 1/9/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DishesScreen: BaseScreen {
    
    private let plusMafaldineDish = app.tables.cells["MAFALDINE"].buttons["plusButton"]
    private let bucketBtn: XCUIElement = buttons ["bucketButton"]
    
    override init() {
        super.init()
        visible()
    }
    
    func tapOnBucketBtn() {
        tap(bucketBtn)
    }
    
    func tapOnPlusMafaldineDishBtn() {
        tap(plusMafaldineDish)
    }
}
    
    // MARK: - Visibility
    extension DishesScreen {
        func visible() {
            XCTAssertTrue(bucketBtn.waitForExistence(timeout: timeout), "DishesScreen is not presented")
        }
    }


