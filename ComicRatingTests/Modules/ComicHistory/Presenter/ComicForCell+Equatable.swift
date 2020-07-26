//
//  ComicForCell+Equatable.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 25/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import Foundation

extension ComicForCell: Equatable {
    public static func == (lhs: ComicForCell, rhs: ComicForCell) -> Bool {
        return lhs.number == rhs.number && lhs.rating == rhs.rating && lhs.title == rhs.title && lhs.img == rhs.img
    }

    func equal(to value: ComicForCell) -> ParameterMatcher<ComicForCell> {
        return ParameterMatcher { comparedValue in
            value == comparedValue
        }
    }
}
