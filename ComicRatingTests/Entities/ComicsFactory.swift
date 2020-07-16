//
//  ComicsFactory.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 16/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Foundation

class ComicsFactory {
    static func getComics(number: Int) -> [Comic] {
        var comics: [Comic] = []
        for i in 0 ... number {
            let comic = ComicFactory.getComic(id: i)
            comics.append(comic)
        }

        return comics
    }
}
