//
//  Comic+Equatable.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 16/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import Foundation

extension Comic: Equatable {
    public static func == (lhs: Comic, rhs: Comic) -> Bool {
        lhs.id == rhs.id && lhs.title == rhs.title && lhs.date == rhs.date && lhs.img == rhs.img && lhs.rating == rhs.rating
    }

    func equal(to value: Comic) -> ParameterMatcher<Comic> {
        return ParameterMatcher { comparedValue in
            value == comparedValue
        }
    }
}
