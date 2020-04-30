//
import Foundation
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
    let imageDownloader: ImageDownloaderServiceInterface
    let storageService: ComicStorageServiceInterface
    let randomNumber: RandomNumber

    var currentComic: Comic?

    init(apiService: ComicApiServiceInterface, imageDownloader: ImageDownloaderServiceInterface, storageService: ComicStorageServiceInterface, randomNumber: RandomNumber) {
        self.apiService = apiService
        self.imageDownloader = imageDownloader
        self.randomNumber = randomNumber
        self.storageService = storageService
    }
}

extension ShowComicInteractor: ShowComicInteractorInput {
    // MARK: - Promises

    func fetchComic() {
        getRandomComicNumber().then { (randomComicNumber: Int) in
            self.apiService.getComic(id: randomComicNumber)
        }.then { (comic: Comic) in
            // TODO: fix
            self.imageDownloader.fetchImage(fromUrl: comic.img).done { [weak self] (data: Data) in
                guard let self = self else { return }
                let upcomingComic = self.toUpcomicComic(comic: comic, imgData: data)
                self.output.comicFetched(comic: upcomingComic)
                self.currentComic = comic
            }
        }
        .catch { _ in
            // TODO:
        }
    }

    func toUpcomicComic(comic: Comic, imgData: Data) -> UpcomingComic {
        let upcomingComic = UpcomingComic(number: comic.number, month: comic.month, year: comic.year, day: comic.day, title: comic.title, safeTitle: comic.safeTitle, img: imgData)
        return upcomingComic
    }

    func getRandomComicNumber() -> Promise<Int> {
        return apiService.getLastComic().map { comic in
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

    func comicRated(rating: Int) {
        print("1. Store locally")
        guard let comic = self.currentComic else { return }
        let comicRating = ComicRating(id: comic.number, rating: rating)
        storageService.upsertComicRating(comicRating: comicRating)
        print("1. Send it to a backend", storageService.fetchComicRating())
    }
}
