//
//  DateExtension.swift
//  OrderMEUITests
//
//  Created by Borys Gurtovyi on 10/29/18.
//  Copyright © 2018 Boris Gurtovoy. All rights reserved.
//

import Foundation

enum AmPm: String {
    case amTime = "AM"
    case pmTime = "PM"
}

extension Date {

    typealias UIDate = (day: String, month: String, year: String)

    func plus(days: Int) -> UIDate? {
        var components = DateComponents()
        components.setValue(days, for: .day)
        guard let futureDate = Calendar.current.date(byAdding: components, to: self) else { return nil }

        let futureDay = Calendar.current.component(.day, from: futureDate).description
        let futureMonthInt = Calendar.current.component(.month, from: futureDate)
        let futureMonth = DateFormatter().shortMonthSymbols[futureMonthInt - 1]
        let futureYear = Calendar.current.component(.year, from: futureDate).description
        return (futureDay, futureMonth, futureYear)
    }
}
