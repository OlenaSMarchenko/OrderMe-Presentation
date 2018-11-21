//
//  TabBarHelper.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 11/5/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation

protocol TabBarProtocol {
    func goToReservations() -> MyReservationsScreen
}

extension TabBarProtocol {
    func goToReservations() -> MyReservationsScreen {
        let myReservationsButton = BaseScreen.app.buttons["My reservations"]
        myReservationsButton.tap()
        return MyReservationsScreen()
    }
}
