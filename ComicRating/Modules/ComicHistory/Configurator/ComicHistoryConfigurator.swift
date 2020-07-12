//
//  ComicHistoryComicHistoryConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ComicHistoryModuleConfigurator {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? ComicHistoryViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ComicHistoryViewController) {
        let router = ComicHistoryRouter()

        let presenter = ComicHistoryPresenter()
        presenter.view = viewController
        presenter.router = router

        let comicStorage = App.shared.services.comicStorage
        let imageDownloader = App.shared.services.imageDownloader
        let interactor = ComicHistoryInteractor(storageService: comicStorage, imageDownloader: imageDownloader)
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        router.comicHistoryViewController = viewController
        router.comicHistoryPresenter = presenter
    }
}
