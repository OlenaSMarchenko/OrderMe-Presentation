//
//  NavigationHelper.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 11/1/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation

protocol BackProtocol {
    func tapOnBackButton()
}

extension BackProtocol {
    func tapOnBackButton() {
        let backButton = BaseScreen.app.buttons["Back 50"]
        backButton.tap()
    }
}
