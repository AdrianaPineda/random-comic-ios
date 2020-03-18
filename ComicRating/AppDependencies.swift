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
    var showComicRouter = ShowComicRouter()

    func initDependencies() {
        let showComicPresenter = ShowComicPresenter()
        let showComicViewController = ShowComicViewController()

        self.showComicRouter.showComicPresenter = showComicPresenter
        self.showComicRouter.showComicViewController = showComicViewController

        showComicPresenter.router = self.showComicRouter

    }

    func setRootViewControllerInWindow(window: UIWindow) {
        self.showComicRouter.presentShowComicControllerFromWindow(window: window)
    }
}
