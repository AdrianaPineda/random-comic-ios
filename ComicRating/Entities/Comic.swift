//
//  Comic.swift
//  ComicRating
//
//  Created by Adriana Pineda on 31/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

struct Comic {
    var id: Int
    var date: Date
    var title: String
    var img: URL
    var rating: UInt8?
}
