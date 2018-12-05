//
//  DetectTableScreen.swift
//  OrderMEUITests
//
//  Created by Natalia on 12/4/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectTableScreen: BaseScreen {
    
    private let tableNumberField = app.textFields["tableNumberTextField"]
    private let selectTableBtn = buttons["Select table"]
    
    func enterTableNumber(numberOfTable: Int) {
        type(element: tableNumberField, text: numberOfTable.description)
    }
    
    func tapOnSelectTableBtn() {
        tap(selectTableBtn)
    }
}
