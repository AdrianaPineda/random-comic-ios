//
//  TabBarConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 09/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

typealias TabSections = (
    showComic: UIViewController,
    history: UIViewController
)

class TabBarConfigurator {
    func configure(tabSections: TabSections) -> UITabBarController {
        let tabBarController = TabBarInitializer.tabBarController() ?? UITabBarController()

        let showComicTabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        tabSections.showComic.tabBarItem = showComicTabBarItem

        let comicHistoryTabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        tabSections.history.tabBarItem = comicHistoryTabBarItem

        tabBarController.viewControllers = [tabSections.showComic, tabSections.history]

        return tabBarController
    }
}
