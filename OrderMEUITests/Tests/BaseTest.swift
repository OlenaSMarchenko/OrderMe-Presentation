//
//  BaseTest.swift
//  OrderMEUITests
//
//  Created by Shanoj on 26/10/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    
    //Restaurant Names
    let hakkasan = "Hakkasan"
    let beautyAndEssex = "Beauty & Essex"
    let republique = "Republique"
    let romanov = "Romanov"
    
    override func setUp() {
        continueAfterFailure = false
        app.launchArguments = ["deleteAllData"]
        app.launch()
    }
}
