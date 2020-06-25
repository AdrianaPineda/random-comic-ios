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
    func configure(tabBarController: UITabBarController, tabSections: TabSections) {
        let showComicTabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        tabSections.showComic.tabBarItem = showComicTabBarItem

        let comicHistoryTabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        tabSections.history.tabBarItem = comicHistoryTabBarItem

        tabBarController.viewControllers = [tabSections.showComic, tabSections.history]
    }
}

// class TabBarModuleConfigurator {
//
//    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
//
//        if let viewController = viewInput as? TabBarViewController {
//            configure(viewController: viewController)
//        }
//    }
//
//    private func configure(viewController: TabBarViewController) {
//
//        let router = TabBarRouter()
//
//        let presenter = TabBarPresenter()
//        presenter.view = viewController
//        presenter.router = router
//
//        let interactor = TabBarInteractor()
//        interactor.output = presenter
//
//        presenter.interactor = interactor
//        viewController.output = presenter
//    }
//
// }
