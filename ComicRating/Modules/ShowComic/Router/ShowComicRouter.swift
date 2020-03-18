//
//  ShowComicShowComicRouter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

class ShowComicRouter: ShowComicRouterInput {

    weak var showComicPresenter: ShowComicModuleInput?
    weak var showComicViewController: ShowComicViewController?

    func presentShowComicControllerFromWindow(window: UIWindow) {
        window.rootViewController = showComicViewController
        window.makeKeyAndVisible()
    }

}
