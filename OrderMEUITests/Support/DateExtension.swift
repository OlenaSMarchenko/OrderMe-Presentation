//
//  DateExtension.swift
//  OrderMEUITests
//
//  Created by Natalia on 1/16/19.
//  Copyright © 2019 Boris Gurtovoy. All rights reserved.
//

import Foundation

//let today = Date()
//today.plus(days: 3)

enum AmPM: String {
    case am = "AM"
    case pm = "PM"
}

extension Date {

    typealias UIData = (day: String, month: String, year: String)
    
    func plus(days: Int) -> UIData? {
        var components = DateComponents()
        components.setValue(days, for: .day)
        guard let futureDate = Calendar.current.date(byAdding: components, to: self) else { return nil}
        let futureDay = Calendar.current.component(.day, from: futureDate).description
        let futureMonthInt = Calendar.current.component(.month, from: futureDate)
        let futureMonth = DateFormatter().shortMonthSymbols[futureMonthInt - 1]
        let futureYear = Calendar.current.component(.year, from: futureDate).description
        return (futureDay, futureMonth, futureYear)
        
    }
}
