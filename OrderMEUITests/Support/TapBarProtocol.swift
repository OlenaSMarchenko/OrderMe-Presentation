//
//  TapBarProtocol.swift
//  OrderMEUITests
//
//  Created by Olena on 1/24/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation

protocol TapBarProtocol {
    func goToMyReservations ()
}

extension TapBarProtocol {
    func goToMyReservations () {
        let myReservationsBtn = BaseScreen.app.buttons["My Reservations"]
        myReservationsBtn.tap()
    }
}
