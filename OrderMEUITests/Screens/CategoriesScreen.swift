//
//  CategoriesScreen.swift
//  OrderMEUITests
//
//  Created by ALEXEY LI on 10/26/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class CategoriesScreen: BaseScreen {
    
    private let backButton = app.buttons["Back 50"]
    
    override init() {
        super.init()
    }
    
    func tapOn(category: String) -> DishesScreen {
        let category: XCUIElement = BaseScreen.app.collectionViews.staticTexts[category]
        tap(category)
        return DishesScreen()
    }
    
    func tapOnBackButton() -> RestaurantScreen {
        tap(backButton)
        return RestaurantScreen()
    }
}
