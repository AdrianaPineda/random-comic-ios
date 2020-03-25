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
    let randomNumber: RandomNumber

    init(apiService: ComicApiServiceInterface, randomNumber: RandomNumber) {
        self.apiService = apiService
        self.randomNumber = randomNumber
    }
}

extension ShowComicInteractor: ShowComicInteractorInput {
    func fetchComic() {
        let randomComicNumber = self.getRandomComicNumber()
        let comic = self.apiService.getComic(id: randomComicNumber)
        self.output.comicFetched(comic: comic)
    }

    func getRandomComicNumber() -> Int {
        let lastComic = self.apiService.getLastComic()
        return self.randomNumber.get(from: 1, to: lastComic.number)
    }
}
