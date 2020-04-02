//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import PromiseKit
import UIKit

class ComicApiService: ComicApiServiceInterface {
    var baseUrl: String
    var httpClient: NetworkProtocol

    init(baseUrl: String, httpClient: NetworkProtocol) {
        self.baseUrl = baseUrl
        self.httpClient = httpClient
    }

    func getComic(id: Int, completion: @escaping ((Comic) -> Void)) {
        // Promise?
        let url = "\(self.baseUrl)/\(id)/info.0.json"
        self.getComic(url: url, completion: completion)
    }

    func getLastComic(completion: @escaping ((Comic) -> Void)) {
//        return Comic(number: 500, month: 1, year: 1, day: 3, title: "random title", safeTitle: "", img: UIImage())
        let url = "\(self.baseUrl)/info.0.json"
        self.getComic(url: url, completion: completion)
    }

    private func getComic(url: String, completion: @escaping ((Comic) -> Void)) {
        self.httpClient.request(method: .GET, url: url, params: nil, responseType: ComicResponse.self) { result in

            switch result {
                case .success(let comicResponse):
                    completion(self.toComic(comicResponse: comicResponse))
                case .failure(let error):
                    // TODO:
                    print(error)
            }
        }
    }

    func getComic(id: Int) -> Promise<Comic> {
        // Promise?
        let url = "\(self.baseUrl)/\(id)/info.0.json"
        return self.getComic(url: url)
    }

    func getLastComic() -> Promise<Comic> { 
        let url = "\(self.baseUrl)/info.0.json"
        return self.getComic(url: url)
    }

    private func getComic(url: String) -> Promise<Comic> {
        let promise = firstly {
            self.httpClient.request(method: .GET, url: url, params: nil, responseType: ComicResponse.self)
        }.then { (comicResponse: ComicResponse) -> Promise<Comic> in
            return Promise<Comic>.value(self.toComic(comicResponse: comicResponse))
        }

        promise.catch { error in
            // TODO:
            print(error)
        }

        return promise
    }

    private func toComic(comicResponse: ComicResponse) -> Comic {
        return Comic(number: comicResponse.number, month: 1, year: 1, day: 3, title: comicResponse.title, safeTitle: "", img: UIImage())
    }
}
