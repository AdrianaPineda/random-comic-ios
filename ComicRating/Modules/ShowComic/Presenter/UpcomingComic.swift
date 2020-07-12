//
//  UpcomingComic.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

struct UpcomingComic {
    var number: Int
    var title: String

    static func fromComic(comic: Comic) -> UpcomingComic {
        let upcomingComic = UpcomingComic(number: comic.id, title: comic.title)
        return upcomingComic
    }
}
