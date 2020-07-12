//
//  ShowComicShowComicInteractor.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation
import PromiseKit

class ShowComicInteractor {
    weak var output: ShowComicInteractorOutput!
    let apiService: ComicApiServiceInterface
    let imageDownloader: ImageDownloaderServiceInterface
    let storageService: ComicStorageServiceInterface

    var currentComic: Comic?

    init(apiService: ComicApiServiceInterface, imageDownloader: ImageDownloaderServiceInterface,
         storageService: ComicStorageServiceInterface) {
        self.apiService = apiService
        self.imageDownloader = imageDownloader
        self.storageService = storageService
    }
}

extension ShowComicInteractor: ShowComicInteractorInput {
    // MARK: - Promises

    func fetchComic() {
        getRandomComicNumber().then { (randomComicNumber: Int) in
            self.apiService.getComic(id: randomComicNumber)
        }.done { (comic: Comic) in
            self.currentComic = comic
            self.output.comicFetched(comic: comic)
        }.catch { _ in
            self.output.comicFetchFailed(message: "Could not fetch comic")
        }
    }

    func fetchImage(fromUrl url: URL) {
        imageDownloader.fetchImage(fromUrl: url).done { [weak self] (data: Data) in
            guard let self = self else { return }
            self.output.imageFetched(imageData: data)
        }.catch { _ in
            self.output.comicFetchFailed(message: "Could not fetch comic image")
        }
    }

    func getRandomComicNumber() -> Promise<Int> {
        return apiService.getLastComic().map { comic in
            let randomNumber = Int.random(in: 1 ... comic.id)
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

    func comicRated(rating: UInt8) {
        print("1. Store locally")
        guard let comic = currentComic else { return }
        let comicRating = ComicRating(id: comic.id, title: comic.title, img: comic.img, rating: rating)
        storageService.upsertComicRating(comicRating: comicRating)
        print("1. Send it to a backend", storageService.getComicRating())
    }
}
