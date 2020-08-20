//
//  UpcomingComicFactory.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 15/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Foundation

class UpcomingComicFactory {
    static func getUpcomingComic(number: Int) -> UpcomingComic {
        return UpcomingComic(number: number, title: "my upcoming comic \(number)")
    }
}
