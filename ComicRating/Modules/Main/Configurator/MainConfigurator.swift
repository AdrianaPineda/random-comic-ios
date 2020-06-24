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
        let showComicViewController = ShowComicModuleInitializer.showComicViewController()
        let comicHistoryViewController = ComicHistoryModuleInitializer.comicHistoryViewController()

        let mainRouter = MainRouter()
        guard let comicHistoryVC = comicHistoryViewController, let showComicVC = showComicViewController else {
            return mainRouter
        }

        // TabBar
        let tabSections = (showComic: showComicVC, history: comicHistoryVC)
        let tabBarController = TabBarInitializer.tabBarController(tabSections: tabSections)

        mainRouter.tabBarController = tabBarController

        return mainRouter
    }
}
