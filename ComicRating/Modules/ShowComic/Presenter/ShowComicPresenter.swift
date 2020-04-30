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
        fetchComic()
    }

    func nextButtonClicked() {
        fetchComic()
    }

    private func fetchComic() {
        interactor.fetchComic()
        view.showLoadingContent()
    }
}

extension ShowComicPresenter: ShowComicInteractorOutput {
    func comicFetched(comic: UpcomingComic) {
        view.resetRating()
        view.stopLoadingContent()
        view.showComic(comic: comic)
        // ^ needs to be done after stopping the content => https://github.com/Juanpe/SkeletonView/issues/226
    }

    func comicRated(rating: Int) {
        interactor.comicRated(rating: rating)
    }
}
