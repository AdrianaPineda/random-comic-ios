//
//  AppDependencies.swift
//  ComicRating
//
//  Created by Adriana Pineda on 19/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation

class AppDependencies {

    init() {
        self.initDependencies()
    }

    func initDependencies() {
        let showComicPresenter = ShowComicPresenter()
        let showComicViewController = ShowComicViewController()

        let showComicRouter = ShowComicRouter()
        showComicRouter.showComicPresenter = showComicPresenter
        showComicRouter.showComicViewController = showComicViewController

        showComicPresenter.router = showComicRouter


    }
}
