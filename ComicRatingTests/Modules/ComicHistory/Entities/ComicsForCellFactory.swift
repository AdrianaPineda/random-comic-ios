//
//  ComicsForCellFactory.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 17/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Foundation

class ComicsForCellFactory {
    static func getComics(number: Int) -> [ComicForCell] {
        var comics: [ComicForCell] = []
        for i in 1 ... number {
            let comic = ComicForCellFactory.getComic(number: i)
            comics.append(comic)
        }

        return comics
    }
}
