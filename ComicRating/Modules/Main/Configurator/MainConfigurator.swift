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
        let viewController = ShowComicViewController()
        let showComicRouter = showComicConfigurator.configure(viewController: viewController) // TODO: alternative?

        let mainRouter = MainRouter()
        mainRouter.showComicRouter = showComicRouter

        if let showComicViewController = showComicRouter.showComicViewController {
            let tabSections = (showComic: showComicViewController, history: UIViewController())
            let tabBarConfigurator = TabBarConfigurator()
            let tabBarController = tabBarConfigurator.configure(tabSections: tabSections)
            mainRouter.tabBarController = tabBarController
        }

        return mainRouter
    }
}
