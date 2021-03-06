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

    init(apiService: ComicApiServiceInterface,
         imageDownloader: ImageDownloaderServiceInterface,
         storageService: ComicStorageServiceInterface) {
        self.apiService = apiService
        self.imageDownloader = imageDownloader
        self.storageService = storageService
    }
}

extension ShowComicInteractor: ShowComicInteractorInput {
    // MARK: - Promises

    func fetchComic() {
        apiService.getLastComic().then { (comic: Comic) -> Promise<Comic> in
            let randomNumber = Int.random(in: 1 ... comic.id)
            return self.apiService.getComic(id: randomNumber)
        }.done { (comic: Comic) -> Void in
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

    func comicRated(_ rating: UInt8) {
        print("1. Store locally")
        guard var comic = currentComic else { return }
        comic.rating = rating
        storageService.upsertComic(comic: comic)
        print("1. Send it to a backend", storageService.getComics())
    }
}
