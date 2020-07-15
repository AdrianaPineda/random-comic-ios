//
//  ComicHistoryComicHistoryInteractor.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

class ComicHistoryInteractor {
    weak var output: ComicHistoryInteractorOutput!
    private let storageService: ComicStorageServiceInterface
    private let imageDownloader: ImageDownloaderServiceInterface

    init(storageService: ComicStorageServiceInterface, imageDownloader: ImageDownloaderServiceInterface) {
        self.storageService = storageService
        self.imageDownloader = imageDownloader
    }
}

extension ComicHistoryInteractor: ComicHistoryInteractorInput {
    func getComics() {
        let comics = storageService.getComics()
        output.comicsLoaded(comics: comics)
    }

    func fetchImage(fromUrl url: URL, id: Int) {
        imageDownloader.fetchImage(fromUrl: url).done { [weak self] (data: Data) in
            guard let self = self else { return }
            self.output.imageFetched(imageData: data, id: id)
        }.catch { error in
            print("Error fetching image: \(error.localizedDescription)")
            self.output.imageFetchFailed(id: id)
        }
    }
}
