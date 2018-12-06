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

    private let restaurant: XCUIElement
    
    init(restaurantName: String) {
        restaurant = BaseScreen.app.tables.staticTexts[restaurantName]
        super.init() //BaseScreen arguments
        visible()
    }
    
    func tapOnRestaurant() -> RestaurantScreen {
        tap(restaurant)
        return RestaurantScreen()
    }
}

// MARK: - Visibility
extension SelectRestaurantScreen {
    func visible() {
        XCTAssertTrue(restaurant.waitForExistence(timeout: timeout), "SelectRestaurantScreen is not presented")
    }
}
