//
//  ShowComicShowComicPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

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
    func comicFetched(comic: Comic, imgData: Data) {
        let upcomingComic = toUpcomicComic(comic: comic, imgData: imgData)
        view.resetRating()
        view.stopLoadingContent()
        view.showComic(comic: upcomingComic)
        // ^ needs to be done after stopping the content => https://github.com/Juanpe/SkeletonView/issues/226
    }

    private func toUpcomicComic(comic: Comic, imgData: Data) -> UpcomingComic {
        let upcomingComic = UpcomingComic(number: comic.number, month: comic.month, year: comic.year, day: comic.day,
                                          title: comic.title, safeTitle: comic.safeTitle, img: imgData)
        return upcomingComic
    }

    func comicRated(rating: UInt8) {
        interactor.comicRated(rating: rating)
    }

    func comicFetchFailed(message: String) {
        view.showOkAlertMessage(title: "Error", message: message)
    }
}
