//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

struct ComicResponse: Codable {
    var number: Int
    var month: String
    var year: String
    var day: String
    var title: String
    var safeTitle: String
    var img: String

    enum CodingKeys: String, CodingKey {
        case number = "num"
        case month
        case year
        case day
        case title
        case safeTitle = "safe_title"
        case img
    }
}

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

    private func toComic(comicResponse: ComicResponse) -> Comic {
        return Comic(number: comicResponse.number, month: 1, year: 1, day: 3, title: comicResponse.title, safeTitle: "", img: UIImage())
    }
}
