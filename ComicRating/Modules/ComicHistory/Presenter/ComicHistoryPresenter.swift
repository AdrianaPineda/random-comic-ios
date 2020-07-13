//
//  ComicHistoryComicHistoryPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

class ComicHistoryPresenter: ComicHistoryModuleInput, ComicHistoryViewOutput {
    weak var view: ComicHistoryViewInput!
    var interactor: ComicHistoryInteractorInput!
    var router: ComicHistoryRouterInput!

    func viewIsReady() {
        interactor.getComics()
        view.showLoadingOnImages()
    }
}

extension ComicHistoryPresenter: ComicHistoryInteractorOutput {
    func comicsLoaded(comics: [Comic]) {
        var comicsForCells: [ComicForCell] = []
        var index = 0
        for comic in comics {
            let comicForCell = ComicForCell.fromComic(comic: comic)
            interactor.fetchImage(fromUrl: comic.img, id: index)
            comicsForCells.append(comicForCell)
            index += 1
        }
        view.showComics(comics: comicsForCells)
    }

    func imageFetched(imageData: Data, id: Int) {
        view.showImageAtIndex(index: id, image: .data(imageData))
    }

    func fetchImageFailed(id: Int) {
        view.showImageAtIndex(index: id, image: .name("warning"))
    }
}
