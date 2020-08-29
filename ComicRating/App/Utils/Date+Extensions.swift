//
//  Date+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

extension Date {
    static func from(day: Int, month: Int, year: Int) -> Date? {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        let calendar = Calendar.current
        return calendar.date(from: dateComponents)
    }

    func format(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
