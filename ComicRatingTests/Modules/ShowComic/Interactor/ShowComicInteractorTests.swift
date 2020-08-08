//
//  ShowComicInteractorTests.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 26/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating

import Cuckoo
import Foundation
import PromiseKit
import XCTest

enum ShowComicInteractorError: Error {
    case getLastComicFailed
    case getComicFailed
}

class ShowComicInteractorTests: XCTestCase {
    let apiService = MockComicApiServiceInterface()
    let imageDownloader = MockImageDownloaderServiceInterface()
    let storageService = MockComicStorageService()
    let showComicInteractorOutput = MockShowComicInteractorOutput()
    var showComicInteractor: ShowComicInteractor?

    override func setUp() {
        showComicInteractor = ShowComicInteractor(apiService: apiService, imageDownloader: imageDownloader,
                                                  storageService: storageService)
        showComicInteractor?.output = showComicInteractorOutput

        stub(showComicInteractorOutput) { stub in
            when(stub.comicFetched(comic: any(Comic.self))).thenDoNothing()
            when(stub.comicFetchFailed(message: any())).thenDoNothing()
        }
    }

    // MARK: - ShowComicInteractorInput

    func testFetchComic_Successful() {
        // Arrange
        let deferredLastComic = Promise<Comic>.pending()
        let deferredGetComic = Promise<Comic>.pending()
        stub(apiService) { stub in
            when(stub.getLastComic()).thenReturn(deferredLastComic.promise)
            when(stub.getComic(id: anyInt())).thenReturn(deferredGetComic.promise)
        }

        // Act
        showComicInteractor?.fetchComic()

        let comic = ComicFactory.getComic(id: 200)
        deferredLastComic.resolver.fulfill(comic)
        deferredGetComic.resolver.fulfill(comic)

        let expectationPromiseChain = expectation(description: "Finish promise chaining")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            expectationPromiseChain.fulfill()
        }

        wait(for: [expectationPromiseChain], timeout: 5)

        // Assert
        verify(apiService).getLastComic()
        verify(apiService).getComic(id: anyInt())
        verify(showComicInteractorOutput).comicFetched(comic: equal(to: comic))
    }

    func testFetchComic_GetLastComicFailed() {
        // Arrange
        let deferredLastComic = Promise<Comic>.pending()
        let deferredGetComic = Promise<Comic>.pending()
        stub(apiService) { stub in
            when(stub.getLastComic()).thenReturn(deferredLastComic.promise)
            when(stub.getComic(id: anyInt())).thenReturn(deferredGetComic.promise)
        }

        // Act
        showComicInteractor?.fetchComic()

        deferredLastComic.resolver.reject(ShowComicInteractorError.getLastComicFailed)

        let expectationPromiseChain = expectation(description: "Finish promise chaining")
        deferredLastComic.promise.ensure {
            expectationPromiseChain.fulfill()
        }.cauterize()

        wait(for: [expectationPromiseChain], timeout: 5)

        // Assert
        verify(apiService).getLastComic()
        verify(showComicInteractorOutput).comicFetchFailed(message: "Could not fetch comic")
    }

    func testFetchComic_GetComicFailed() {
        // Arrange
        let deferredLastComic = Promise<Comic>.pending()
        let deferredGetComic = Promise<Comic>.pending()
        stub(apiService) { stub in
            when(stub.getLastComic()).thenReturn(deferredLastComic.promise)
            when(stub.getComic(id: anyInt())).thenReturn(deferredGetComic.promise)
        }

        // Act
        showComicInteractor?.fetchComic()

        let comic = ComicFactory.getComic(id: 200)
        deferredLastComic.resolver.fulfill(comic)
        deferredGetComic.resolver.reject(ShowComicInteractorError.getComicFailed)

        let expectationPromiseChain = expectation(description: "Finish promise chaining")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            expectationPromiseChain.fulfill()
        }

        wait(for: [expectationPromiseChain], timeout: 5)

        // Assert
        verify(apiService).getLastComic()
        verify(showComicInteractorOutput).comicFetchFailed(message: "Could not fetch comic")
    }
}
