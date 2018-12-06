//
//  SelectRestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class SelectRestaurantScreen: BaseScreen {

    private let restaurantOceanSeafood: XCUIElement = app.tables.staticTexts["Ocean Seafood"]
    
    func tapOnRestaurantOceanSeafood() {
        tap(restaurantOceanSeafood)
    }
}
