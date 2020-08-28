//
//  UIView+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 28/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
