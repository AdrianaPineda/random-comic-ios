//
//  ComicApiService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ComicApiService: ComicApiServiceInterface {
    func getComic(id: Int) -> Comic {
        return Comic(month: 1, year: 1, title: "a", safeTitle: "", img: UIImage())
    }
}
