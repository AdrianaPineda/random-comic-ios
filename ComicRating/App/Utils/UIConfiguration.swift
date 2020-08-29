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
        return UIColor(named: "Background") ?? UIColor.clear
    }

    func getTitlesFont() -> UIFont {
        return UIFont.systemFont(ofSize: 18)
    }

    func getSubtitlesFont() -> UIFont {
        return UIFont.systemFont(ofSize: 16)
    }

    func getTitlesColor() -> UIColor {
        return UIColor(named: "Titles") ?? UIColor.clear
    }

    func getSubtitlesColor() -> UIColor {
        return UIColor(named: "Primary") ?? UIColor.clear
    }

    func getSelectedSectionColor() -> UIColor {
        return UIColor(named: "Primary") ?? UIColor.clear
    }
}
