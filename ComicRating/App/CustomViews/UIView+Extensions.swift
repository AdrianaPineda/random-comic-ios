//
//  ViewControllers+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 20/08/2020.
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

extension UIView {
    func configureUI() {
        backgroundColor = UIConfiguration.sharedInstance.getBackgroundColor()
    }
}

extension UIViewController {
    @objc func configureUI() {
        view.configureUI()
    }
}

extension UICollectionViewController {
    override func configureUI() {
        collectionView.configureUI()
    }
}

extension TabBarViewController {
    override func configureUI() {
        tabBar.barTintColor = UIConfiguration.sharedInstance.getBackgroundColor()
    }
}
