//
//  TabBarConfigurator.swift
//  ComicRating
//
//  Created by Adriana Pineda on 09/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class TabBarConfigurator {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? TabBarViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TabBarViewController) {
        let router = TabBarRouter()

        let presenter = TabBarPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TabBarInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        router.tabBarController = viewController
        router.tabBarPresenter = presenter
    }
}
