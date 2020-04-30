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
    var showComicRouter: ShowComicRouter?

    public init() {
        let showComicModuleConfigurator = ShowComicModuleConfigurator()
        showComicRouter = showComicModuleConfigurator.configure()
    }

    func setRootViewControllerInWindow(window: UIWindow) {
        showComicRouter?.presentShowComicControllerFromWindow(window: window)
    }
}
