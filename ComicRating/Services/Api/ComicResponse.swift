//
//  ComicResponse.swift
//  ComicRating
//
//  Created by Adriana Pineda on 02/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

// var month: String
// var num: Int
// var link: String
// var year: String
// var news: String
// var safeTitle: String
// var transcript: String
// var alt: String
// var img: String
// var title: String
// var day: String

// TODO: cast other values
// Change file name
extension Comic: Decodable {
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

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        number = try values.decode(Int.self, forKey: .num)
        month = try Int(values.decode(String.self, forKey: .month)) ?? 0
        year = try Int(values.decode(String.self, forKey: .year)) ?? 0
        day = try Int(values.decode(String.self, forKey: .day)) ?? 0
        title = try values.decode(String.self, forKey: .title)
        safeTitle = try values.decode(String.self, forKey: .safeTitle)
        img = try values.decode(String.self, forKey: .img)
    }
}
