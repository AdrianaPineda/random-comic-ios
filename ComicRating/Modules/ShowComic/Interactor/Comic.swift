//
//  Comic.swift
//  ComicRating
//
//  Created by Adriana Pineda on 31/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

struct Comic {
    var number: Int
    var month: Int
    var year: Int
    var day: Int
    var title: String
    var safeTitle: String
    var img: String
}

struct UpcomingComic {
    var number: Int
    var month: Int
    var year: Int
    var day: Int
    var title: String
    var safeTitle: String
    var img: Data
}
