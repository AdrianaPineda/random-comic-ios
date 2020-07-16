//
//  Comic+Matchable.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 16/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import Foundation

extension Comic {
    func equal(to value: Comic) -> ParameterMatcher<Comic> {
        return ParameterMatcher { comparedValue in
            value.id == comparedValue.id && value.title == comparedValue.title && value.date == comparedValue.date && value.img == comparedValue.img && value.rating == comparedValue.rating
        }
    }
}
