//
//  ShowComicShowComicPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

class ShowComicPresenter: ShowComicModuleInput {
    weak var view: ShowComicViewInput! // TODO: why is this a forced cast
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
        view.showLoadingContent(onElement: .text)
        view.showLoadingContent(onElement: .rating)
        view.showLoadingContent(onElement: .image)
    }
}

extension ShowComicPresenter: ShowComicInteractorOutput {
    func comicFetched(comic: Comic) {
        let upcomingComic = UpcomingComic.fromComic(comic: comic)
        view.resetRating()
        view.stopLoadingContent(onElement: .text)
        view.showComic(comic: upcomingComic)
        // ^ needs to be done after stopping the content => https://github.com/Juanpe/SkeletonView/issues/226
        interactor.fetchImage(fromUrl: comic.img)
    }

    func imageFetched(imageData: Data) {
        view.stopLoadingContent(onElement: .rating)
        view.stopLoadingContent(onElement: .image)
        // ^ needs to be done after stopping the content => https://github.com/Juanpe/SkeletonView/issues/226
        view.showImage(imageData: imageData)
    }

    func comicRated(rating: UInt8) {
        interactor.comicRated(rating)
    }

    func comicFetchFailed(message: String) {
        view.showOkAlertMessage(title: "Error", message: message)
    }
}
