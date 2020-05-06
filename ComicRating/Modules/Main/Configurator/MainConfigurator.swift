//
//  MainConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 06/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class MainConfigurator {
    func configure() -> MainRouter {
        let showComicConfigurator = ShowComicModuleConfigurator()
        let showComicViewController = ShowComicViewController()
        let showComicRouter = showComicConfigurator.configure(viewController: showComicViewController)

        let mainRouter = MainRouter()
        mainRouter.showComicRouter = showComicRouter

        let tabBarController = UITabBarController()

        let showComicTabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        showComicViewController.tabBarItem = showComicTabBarItem

        tabBarController.viewControllers = [showComicViewController]

        mainRouter.tabBarController = tabBarController

        return mainRouter
    }
}
