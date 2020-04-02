//
//  ShowComicShowComicInteractor.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import PromiseKit

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
    // MARK: - Promises

    func fetchComic() {
        self.getRandomComicNumber().then { (randomComicNumber: Int) in
            self.apiService.getComic(id: randomComicNumber)
        }.done { comic in
            self.output.comicFetched(comic: comic)
        }.catch { _ in
            // TODO:
        }
    }

    func getRandomComicNumber() -> Promise<Int> {
        return self.apiService.getLastComic().map { comic in
            let randomNumber = self.randomNumber.get(from: 1, to: comic.number)
            return randomNumber
        }
    }

    /*
     // MARK: - Completion handlers
     func fetchComic() {
         self.getRandomComicNumber { randomComicNumber in
             self.apiService.getComic(id: randomComicNumber) { comic in
                 self.output.comicFetched(comic: comic)
             }
         }
     }

     func getRandomComicNumber(completion: @escaping ((Int) -> Void)) {
         self.apiService.getLastComic { comic in
             let randomNumber = self.randomNumber.get(from: 1, to: comic.number)
             completion(randomNumber)
         }
     }*/
}
