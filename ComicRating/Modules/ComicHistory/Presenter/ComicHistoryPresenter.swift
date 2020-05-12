//
//  ComicHistoryComicHistoryPresenter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class ComicHistoryPresenter: ComicHistoryModuleInput, ComicHistoryViewOutput, ComicHistoryInteractorOutput {

    weak var view: ComicHistoryViewInput!
    var interactor: ComicHistoryInteractorInput!
    var router: ComicHistoryRouterInput!

    func viewIsReady() {

    }
}
