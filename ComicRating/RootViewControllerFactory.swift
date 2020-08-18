//
//  RootViewControllerFactory.swift
//  ComicRating
//
//  Created by Adriana Pineda on 24/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class RootViewControllerFactory {
    static func get() -> UIViewController? {
        let tabBarModuleBuilder = TabBarModuleBuilder()
        let tabBarController = tabBarModuleBuilder.getViewController()
        return tabBarController
    }
}
