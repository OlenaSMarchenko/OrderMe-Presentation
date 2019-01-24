//
//  BackBtnProtocol.swift
//  OrderMEUITests
//
//  Created by Natalia on 1/24/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation

protocol BackProtocol {
    func tapOnBackBtn()
}

extension BackProtocol {
    func tapOnBackBtn() {
        let backBtn = BaseScreen.app.buttons["Back 50"]
        backBtn.tap()
    }
}
