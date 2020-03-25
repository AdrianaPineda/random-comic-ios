//
//  ShowComicShowComicPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class ShowComicPresenter: ShowComicModuleInput, ShowComicViewOutput {
    weak var view: ShowComicViewInput!
    var interactor: ShowComicInteractorInput!
    var router: ShowComicRouterInput!

    func viewIsReady() {
        self.interactor.fetchComic()
    }
}

extension ShowComicPresenter: ShowComicInteractorOutput {
    func comicFetched(comic: Comic) {
        self.view.showComic(comic: comic)
    }
}
