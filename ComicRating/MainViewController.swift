//
//  MainViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 24/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class MainViewController {
    static func get() -> UIViewController? {
        guard let tabSections = getTabSections() else {
            return nil
        }
        let tabBarController = TabBarInitializer.tabBarController(tabSections: tabSections)
        return tabBarController
    }

    private static func getTabSections() -> TabSections? {
        let showComicViewController = ShowComicModuleInitializer.showComicViewController()
        let comicHistoryViewController = ComicHistoryModuleInitializer.comicHistoryViewController()

        guard let comicHistoryVC = comicHistoryViewController, let showComicVC = showComicViewController else {
            return nil
        }

        return (showComic: showComicVC, history: comicHistoryVC)
    }
}
