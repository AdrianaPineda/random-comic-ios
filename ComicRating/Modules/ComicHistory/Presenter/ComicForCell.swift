//
//  ComicForCell.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
enum ComicImage: Equatable {
    case data(Data)
    case name(String)
}

struct ComicForCell {
    var number: Int
    var title: String
    var rating: UInt8
    var img: ComicImage?

    static func fromComic(comic: Comic) -> ComicForCell {
        let rating = comic.rating ?? 0
        let comicForCell = ComicForCell(number: comic.id, title: comic.title, rating: rating)
        return comicForCell
    }
}
