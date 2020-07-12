//
//  Comic+Decodable.swift
//  ComicRating
//
//  Created by Adriana Pineda on 02/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

extension Comic: Decodable {
    enum CodingKeys: String, CodingKey {
        case month
        case id = "num"
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
        id = try values.decode(Int.self, forKey: .id)
        month = try Int(values.decode(String.self, forKey: .month)) ?? 0
        year = try Int(values.decode(String.self, forKey: .year)) ?? 0
        day = try Int(values.decode(String.self, forKey: .day)) ?? 0
        title = try values.decode(String.self, forKey: .title)
        safeTitle = try values.decode(String.self, forKey: .safeTitle)
        img = try values.decode(URL.self, forKey: .img)
        rating = nil
    }
}
