//
//  TabBarTabBarPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class TabBarPresenter: TabBarModuleInput, TabBarViewOutput, TabBarInteractorOutput {
    weak var view: TabBarViewInput!
    var interactor: TabBarInteractorInput!
    var router: TabBarRouterInput!

    func viewIsReady() {}
}
