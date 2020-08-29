//
import Foundation
//  UIColor+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 20/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

extension UIColor {
    static func from(hexString: String) -> UIColor {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)

        if hexString.hasPrefix("#") {
            scanner.currentIndex = hexString.index(after: hexString.startIndex)
        }

        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
        let mask = 0x0000_00FF
        let rValue = Int(color >> 16) & mask
        let gValue = Int(color >> 8) & mask
        let bValue = Int(color) & mask
        let red = CGFloat(rValue) / 255.0
        let green = CGFloat(gValue) / 255.0
        let blue = CGFloat(bValue) / 255.0

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
