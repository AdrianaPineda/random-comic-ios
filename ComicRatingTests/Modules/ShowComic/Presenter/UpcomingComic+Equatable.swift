//
//  UpcomingComic+Equatable.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 15/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import Foundation

extension UpcomingComic: Equatable {
    public static func == (lhs: UpcomingComic, rhs: UpcomingComic) -> Bool {
        return lhs.number == rhs.number && lhs.title == rhs.title
    }

    func equal(to value: UpcomingComic) -> ParameterMatcher<UpcomingComic> {
        return ParameterMatcher { comparedValue in
            value == comparedValue
        }
    }
}
