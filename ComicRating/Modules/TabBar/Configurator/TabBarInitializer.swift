//
//  TabBarInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 21/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
let KTabBarControllerIdentifier = "tabBarC"

typealias TabSections = (
    showComic: UIViewController,
    history: UIViewController
)

class TabBarInitializer: NSObject {
    static func tabBarController(tabSections: TabSections) -> UITabBarController {
        let tabBarController = UITabBarController()
        let tabBarConfigurator = TabBarConfigurator()
        tabBarConfigurator.configure(tabBarController: tabBarController, tabSections: tabSections)

        return tabBarController
    }
}
