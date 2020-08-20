//
//  ComicFactory.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 16/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import Foundation

class ComicFactory {
    static func getComic(id: Int) -> Comic {
        return Comic(id: id,
                     date: Date(),
                     title: "Comic #\(id) for tests",
                     img: URL(string: "https://image-url-\(id).com")!)
    }
}
