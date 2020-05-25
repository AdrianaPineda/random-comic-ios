//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

// TODO: check >
// https://medium.com/flawless-app-stories/writing-network-layer-in-swift-protocol-oriented-approach-4fa40ef1f908
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

    func getComic(id: Int, completion: @escaping ((Comic?) -> Void)) {
        let url = "\(baseUrl)/\(id)/info.0.json"
        getComic(url: url, completion: completion)
    }

    func getLastComic(completion: @escaping ((Comic?) -> Void)) {
        let url = "\(baseUrl)/info.0.json"
        getComic(url: url, completion: completion)
    }

    private func getComic(url: String, completion: @escaping ((Comic?) -> Void)) {
        httpService.request(method: .get, url: url, params: nil, responseType: Comic.self) { result in

            switch result {
            case let .success(comic):
                completion(comic)
            case let .failure(error):
                print(error)
                completion(nil)
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
        return httpService.request(method: .get, url: url, params: nil, responseType: Comic.self)
    }
}
