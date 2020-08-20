//
import Foundation
//  UIConfiguration.swift
//  ComicRating
//
//  Created by Adriana Pineda on 20/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

class UIConfiguration {
    static let sharedInstance = UIConfiguration()

    func getBackgroundColor() -> UIColor {
        return UIColor(hexString: "#313335")
    }

    func getTitlesFont() -> UIFont {
        return UIFont.systemFont(ofSize: 18)
    }

    func getSubTitlesFont() -> UIFont {
        return UIFont.systemFont(ofSize: 16)
    }
}
