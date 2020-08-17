//
//  ComicForCellFactory.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 17/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Foundation

class ComicForCellFactory {
    static func getComic(number: Int, img: ComicImage = ComicImage.name("myImage")) -> ComicForCell {
        let comic = ComicForCell(number: number, title: "comic title \(number)", rating: 2,
                                 img: img)
        return comic
    }
}
