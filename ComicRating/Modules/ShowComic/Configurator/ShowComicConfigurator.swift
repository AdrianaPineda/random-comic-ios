//
//  ShowComicShowComicConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicModuleConfigurator {

    func configure() -> ShowComicRouter {

        let viewController = ShowComicViewController()
        let router = ShowComicRouter()

        let presenter = ShowComicPresenter()
        presenter.view = viewController
        presenter.router = router

        let comicApi = App.shared.services.comicApi
        let intRandomNumber = IntRandomNumber()
        let interactor = ShowComicInteractor(apiService: comicApi, randomNumber: intRandomNumber)
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        router.showComicPresenter = presenter
        router.showComicViewController = viewController

        return router
    }

}
