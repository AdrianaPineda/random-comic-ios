//
//  ShowComicShowComicConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicModuleConfigurator {

    func configure(services: ServiceBuilderInterface) -> ShowComicRouter {

        let viewController = ShowComicViewController()
        let router = ShowComicRouter()

        let presenter = ShowComicPresenter()
        presenter.view = viewController
        presenter.router = router

        let apiService = services.comicApi

        let interactor = ShowComicInteractor()
        interactor.output = presenter
        interactor.apiService = apiService

        presenter.interactor = interactor
        viewController.output = presenter

        router.showComicPresenter = presenter
        router.showComicViewController = viewController

        return router
    }

}
