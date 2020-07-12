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
        case transcript
        case alt
        case img
        case title
        case day
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        let year = try Int(values.decode(String.self, forKey: .year)) ?? 0
        let month = try Int(values.decode(String.self, forKey: .month)) ?? 0
        let day = try Int(values.decode(String.self, forKey: .day)) ?? 0
        date = Date.from(day: day, month: month, year: year) ?? Date()
        // TODO: ^ what happens if this is not valid?, return nil?
        title = try values.decode(String.self, forKey: .title)
        img = try values.decode(URL.self, forKey: .img)
        rating = nil
    }
}
