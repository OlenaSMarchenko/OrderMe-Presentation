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
    
    //Restaurants Names
    static let oceanSeafood = "Ocean Seafood"
    static let beautyEssex = "Beauty & Essex"
    static let republique = "Republique"
    static let hakkasan = "Hakkasan"
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launchArguments = ["deleteAllData"]
        app.launch()
    }        
}
