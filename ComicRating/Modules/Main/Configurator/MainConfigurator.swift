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
        // Testing 2 alternatives to conifgure modules:

        // Show Comic: manually init view controller and call configure
        let showComicConfigurator = ShowComicModuleConfigurator()
        let showComicViewController = ShowComicViewController()
        showComicConfigurator.configure(viewController: showComicViewController)

        // Comic History: call initializer to get view controller which calls configure in `awakeFromNib` when
        // view controller is instantiated from storyboard
        let comicHistoryViewController = ComicHistoryModuleInitializer.comicHistoryViewController()

        let mainRouter = MainRouter()
        guard let comicHistoryVC = comicHistoryViewController else {
            return mainRouter
        }

        // TabBar
        let tabSections = (showComic: showComicViewController, history: comicHistoryVC)
        let tabBarConfigurator = TabBarConfigurator()
        let tabBarController = tabBarConfigurator.configure(tabSections: tabSections)

        mainRouter.tabBarController = tabBarController

        return mainRouter
    }
}
