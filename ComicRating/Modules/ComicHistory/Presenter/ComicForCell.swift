//
//  ComicForCell.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
struct ComicForCell {
    var number: Int
    var title: String
    var img: Data?

    static func fromComic(comic: Comic) -> ComicForCell {
        let comic = ComicForCell(number: comic.id, title: comic.title)
        return comic
    }
}
