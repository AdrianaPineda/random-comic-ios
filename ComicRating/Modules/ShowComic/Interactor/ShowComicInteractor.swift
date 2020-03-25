//
//  ShowComicShowComicInteractor.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class ShowComicInteractor {
    weak var output: ShowComicInteractorOutput!
    let apiService: ComicApiServiceInterface

    init(apiService: ComicApiServiceInterface) {
        self.apiService = apiService
    }
}

extension ShowComicInteractor: ShowComicInteractorInput {
    func fetchComic() {
        let randomId = 2
        let comic = self.apiService.getComic(id: randomId)
        self.output.comicFetched(comic: comic)
    }
}
