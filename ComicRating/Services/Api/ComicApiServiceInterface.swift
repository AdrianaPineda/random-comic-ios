//
//  ComicApiClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

struct Comic {
    var number: Int
    var month: Int
    var year: Int
    var day: Int
    var title: String
    var safeTitle: String
    var img: UIImage
}

protocol ComicApiServiceInterface: ServiceInterface {
    var baseUrl: String { get set }
    func getComic(id: Int) -> Comic
    func getLastComic() -> Comic
}
