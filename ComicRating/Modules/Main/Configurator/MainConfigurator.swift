//
//  MainConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 06/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

let KComicHistoryViewControllerIdentifier = "comicHistoryVC"

class MainConfigurator {
    func comicHistoryViewControllerFromStoryboard() -> ComicHistoryViewController? {
        let storyboard = UIStoryboard(name: "ComicHistory", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KComicHistoryViewControllerIdentifier) as? ComicHistoryViewController
        return viewController
    }

    func configure() -> MainRouter {
        let showComicConfigurator = ShowComicModuleConfigurator()
        let showComicViewController = ShowComicViewController()
        _ = showComicConfigurator
            .configure(viewController: showComicViewController) // TODO: alternative?

        let mainRouter = MainRouter()
//        mainRouter.showComicRouter = showComicRouter

        let comicHistoryConfigurator = ComicHistoryModuleConfigurator()
        let comicHistoryViewController = comicHistoryViewControllerFromStoryboard()

        guard let comicHistoryVC = comicHistoryViewController else {
            return mainRouter
        }

        _ = comicHistoryConfigurator
            .configureModuleForViewInput(viewInput: comicHistoryViewController)

        let tabSections = (showComic: showComicViewController, history: comicHistoryVC)
        let tabBarConfigurator = TabBarConfigurator()
        let tabBarController = tabBarConfigurator.configure(tabSections: tabSections)
        mainRouter.tabBarController = tabBarController

        return mainRouter
    }
}
