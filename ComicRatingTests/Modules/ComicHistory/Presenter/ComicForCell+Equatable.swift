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
    private static func areImagesEqual(lhs: ComicImage?, rhs: ComicImage?) -> Bool {
        guard let _ = lhs, let _ = rhs else {
            return true
        }

        var areEqual = false
        if case let .data(dataLhs) = lhs, case let .data(dataRhs) = rhs {
            areEqual = dataLhs == dataRhs
        }

        if case let .name(nameLhs) = lhs, case let .name(nameRhs) = rhs {
            areEqual = nameLhs == nameRhs
        }

        return areEqual
    }

    public static func == (lhs: ComicForCell, rhs: ComicForCell) -> Bool {
        let equalImages = areImagesEqual(lhs: lhs.img, rhs: rhs.img)
        return lhs.number == rhs.number && lhs.rating == rhs.rating && lhs.title == rhs.title && equalImages
    }

    func equal(to value: ComicForCell) -> ParameterMatcher<ComicForCell> {
        return ParameterMatcher { comparedValue in
            value == comparedValue
        }
    }
}
