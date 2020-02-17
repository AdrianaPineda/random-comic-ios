//
//  ShowComicShowComicConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ShowComicViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ShowComicViewController) {

        let router = ShowComicRouter()

        let presenter = ShowComicPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ShowComicInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
