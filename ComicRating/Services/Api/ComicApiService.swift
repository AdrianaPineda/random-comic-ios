//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ComicApiService: ComicApiServiceInterface {
    var baseUrl: String

    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }

    func getComic(id: Int) -> Comic {
        return Comic(number: 1, month: 1, year: 1, day: 3, title: "random title", safeTitle: "", img: UIImage())
    }

    func getLastComic() -> Comic {
        return Comic(number: 123456, month: 1, year: 1, day: 3, title: "random title", safeTitle: "", img: UIImage())
    }
}
