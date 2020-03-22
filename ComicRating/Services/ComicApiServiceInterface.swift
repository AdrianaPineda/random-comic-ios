//
//  ComicApiClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

struct Comic {
    var month: Int
    var year: Int
    var title: String
    var safeTitle: String
    var img: UIImage
}

protocol ComicApiServiceInterface {
    func getComic(id: Int) -> Comic
}
