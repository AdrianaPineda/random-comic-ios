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
        return Comic(month: 1, year: 1, title: "a", safeTitle: "", img: UIImage())
    }
}
