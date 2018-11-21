//
//  DishesScreen.swift
//  OrderMEUITests
//
//  Created by ALEXEY LI on 10/26/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import XCTest

class DishesScreen: BaseScreen {
    
    private let backButton = app.buttons["Back 50"]
    
    override init() {
        super.init()
    }
    
    func tapOnBackButton() -> CategoriesScreen {
        tap(backButton)
        return CategoriesScreen()
    }
}
