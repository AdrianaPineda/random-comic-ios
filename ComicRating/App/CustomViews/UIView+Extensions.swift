//
//  ViewControllers+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 20/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

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

extension TabBarViewController {
    override func configureUI() {
        super.configureUI()
        tabBar.barTintColor = UIConfiguration.sharedInstance.getBackgroundColor()
    }
}

extension UICollectionViewController {
    override func configureUI() {
        super.configureUI()
        collectionView.configureUI()
    }
}
