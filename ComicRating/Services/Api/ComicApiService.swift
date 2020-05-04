//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

//  TODO: check > https://medium.com/flawless-app-stories/writing-network-layer-in-swift-protocol-oriented-approach-4fa40ef1f908
import PromiseKit
import UIKit

class ComicApiService: ComicApiServiceInterface {
    var baseUrl: String
    var httpService: HttpServiceInterface

    init(baseUrl: String, httpService: HttpServiceInterface) {
        self.baseUrl = baseUrl
        self.httpService = httpService
    }

    // MARK: - Completion handlers

    func getComic(id: Int, completion: @escaping ((Comic) -> Void)) {
        let url = "\(baseUrl)/\(id)/info.0.json"
        getComic(url: url, completion: completion)
    }

    func getLastComic(completion: @escaping ((Comic) -> Void)) {
        let url = "\(baseUrl)/info.0.json"
        getComic(url: url, completion: completion)
    }

    private func getComic(url: String, completion: @escaping ((Comic) -> Void)) {
        httpService.request(method: .get, url: url, params: nil, responseType: ComicResponse.self) { result in

            switch result {
            case let .success(comicResponse):
                completion(self.toComic(comicResponse: comicResponse))
            case let .failure(error):
                print(error) // TODO:
            }
        }
    }

    // MARK: - Promises

    func getComic(id: Int) -> Promise<Comic> {
        let url = "\(baseUrl)/\(id)/info.0.json"
        return getComic(url: url)
    }

    func getLastComic() -> Promise<Comic> {
        let url = "\(baseUrl)/info.0.json"
        return getComic(url: url)
    }

    private func getComic(url: String) -> Promise<Comic> {
        let promise = firstly {
            self.httpService.request(method: .get, url: url, params: nil, responseType: ComicResponse.self)
        }.then { (comicResponse: ComicResponse) -> Promise<Comic> in
            Promise<Comic>.value(self.toComic(comicResponse: comicResponse))
        }

        promise.catch { error in
            // TODO:
            print(error)
        }

        return promise
    }

    // MARK: - Common

    private func toComic(comicResponse: ComicResponse) -> Comic {
        let month = Int(comicResponse.month) ?? 0
        let year = Int(comicResponse.year) ?? 0
        let day = Int(comicResponse.day) ?? 0

        return Comic(number: comicResponse.number, month: month, year: year, day: day, title: comicResponse.title, safeTitle: comicResponse.safeTitle, img: comicResponse.img)
    }
}
