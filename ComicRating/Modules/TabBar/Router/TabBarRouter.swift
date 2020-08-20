//
//  TabBarRouter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

typealias TabSections = (showComic: UIViewController,
                         history: UIViewController)

class TabBarRouter: TabBarRouterInput {
    weak var tabBarPresenter: TabBarPresenter?
    weak var tabBarController: TabBarViewController?
    var showComicModuleBuilder: ShowComicModuleBuilder?
    var comicHistoryModuleBuilder: ComicHistoryModuleBuilder?

    func getTabSections() -> TabSections? {
        let showComicViewController = showComicModuleBuilder?.getViewController()
        let comicHistoryViewController = comicHistoryModuleBuilder?.getViewController()

        guard let comicHistoryVC = comicHistoryViewController, let showComicVC = showComicViewController else {
            return nil
        }

        let showComicTabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        showComicVC.tabBarItem = showComicTabBarItem

        let comicHistoryTabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        comicHistoryVC.tabBarItem = comicHistoryTabBarItem

        let tabSections = (showComic: showComicVC, history: comicHistoryVC)
        return tabSections
    }
}
