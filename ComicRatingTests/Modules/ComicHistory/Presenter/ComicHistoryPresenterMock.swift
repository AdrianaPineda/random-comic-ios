//
//  ComicHistoryPresenterMock.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 15/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import UIKit

class ComicHistoryPresenterMock: ComicHistoryInteractorOutput {
    var comicsLoadedCalled = false
    var imageFetchedCalled = false
    var imageFetchFailedCalled = false

    func comicsLoaded(comics _: [Comic]) {
        comicsLoadedCalled = true
    }

    func imageFetched(imageData _: Data, id _: Int) {
        imageFetchedCalled = true
    }

    func imageFetchFailed(id _: Int) {
        imageFetchFailedCalled = true
    }
}
