//
//  ComicResponse.swift
//  ComicRating
//
//  Created by Adriana Pineda on 02/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

struct ComicResponse: Codable {
    var number: Int
    var month: String
    var year: String
    var day: String
    var title: String
    var safeTitle: String
    var img: String

    enum CodingKeys: String, CodingKey {
        case number = "num"
        case month
        case year
        case day
        case title
        case safeTitle = "safe_title"
        case img
    }
}
