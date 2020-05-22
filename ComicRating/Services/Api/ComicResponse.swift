//
//  ComicResponse.swift
//  ComicRating
//
//  Created by Adriana Pineda on 02/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

struct ComicResponse: Codable {
    var month: String
    var num: Int
    var link: String
    var year: String
    var news: String
    var safeTitle: String
    var transcript: String
    var alt: String
    var img: String
    var title: String
    var day: String

    enum CodingKeys: String, CodingKey {
        case month
        case num
        case link
        case year
        case news
        case safeTitle = "safe_title"
        case transcript
        case alt
        case img
        case title
        case day
    }
}
