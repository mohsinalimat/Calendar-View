//
//  DateExtension.swift
//  LandeoCalendar
//
//  Created by sebastian on 11.10.2017.
//  Copyright © 2017 Sebastian Grabiński. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    
    func applyOffSetOfMonth(calendar: Calendar, offset:Int) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.month = offset
        return calendar.date(byAdding: dateComponents, to: self)
    }
    
    static func returnYearFromToday(_ year: Int) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.year = year
        let today = Date()
        let startDate = Calendar.current.date(byAdding: dateComponents, to: today)
        return startDate
    }
    
    func dateMonthFromToday(_ month: Int) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.month = month
        let today = Date()
        let date = Calendar.current.date(byAdding: dateComponents, to: today)
        return date
    }
    
}


