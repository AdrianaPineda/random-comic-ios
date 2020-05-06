//
//  AppDependencies.swift
//  ComicRating
//
//  Created by Adriana Pineda on 19/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    var mainRouter: MainRouter?
//    var showComicRouter: ShowComicRouter?

    public init() {
        let mainConfigurator = MainConfigurator()
        mainRouter = mainConfigurator.configure()
//        let showComicModuleConfigurator = ShowComicModuleConfigurator()
//        showComicRouter = showComicModuleConfigurator.configure()
    }

    func setRootViewControllerInWindow(window: UIWindow) {
        mainRouter?.presentTabBarControllerFromWindow(window: window)
//        showComicRouter?.presentShowComicControllerFromWindow(window: window)
    }
}
