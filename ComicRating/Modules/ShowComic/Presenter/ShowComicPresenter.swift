//
//  ShowComicShowComicPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class ShowComicPresenter: ShowComicModuleInput {
    weak var view: ShowComicViewInput!
    var interactor: ShowComicInteractorInput!
    var router: ShowComicRouterInput!
}

extension ShowComicPresenter: ShowComicViewOutput {
    func viewIsReady() {
        self.interactor.fetchComic()
    }

    func nextButtonClicked() {
        self.interactor.fetchComic()
    }
}

extension ShowComicPresenter: ShowComicInteractorOutput {
    func comicFetched(comic: UpcomingComic) {
        self.view.showComic(comic: comic)
    }
}
