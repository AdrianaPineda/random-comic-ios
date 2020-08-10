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

enum ShowComicInteractorTestsError: Error {
    case getLastComicFailed
    case getComicFailed
    case fetchImageFailed
}

class ShowComicInteractorTests: XCTestCase {
    let apiService = MockComicApiServiceInterface()
    let imageDownloader = MockImageDownloaderServiceInterface()
    let storageService = MockComicStorageServiceInterface()
    let showComicInteractorOutput = MockShowComicInteractorOutput()
    var showComicInteractor: ShowComicInteractor?

    let (getLastComicPromise, getLastComicSeal) = Promise<Comic>.pending()
    let (getComicPromise, getComicSeal) = Promise<Comic>.pending()

    override func setUp() {
        showComicInteractor = ShowComicInteractor(apiService: apiService, imageDownloader: imageDownloader,
                                                  storageService: storageService)
        showComicInteractor?.output = showComicInteractorOutput
        setupApiServiceStub()
        setupComicInteractorOutputStub()
    }

    private func setupApiServiceStub() {
        stub(apiService) { stub in
            when(stub.getLastComic()).thenReturn(getLastComicPromise)
            when(stub.getComic(id: anyInt())).thenReturn(getComicPromise)
        }
    }

    private func setupComicInteractorOutputStub() {
        stub(showComicInteractorOutput) { stub in
            when(stub.comicFetched(comic: any(Comic.self))).thenDoNothing()
            when(stub.comicFetchFailed(message: any())).thenDoNothing()
            when(stub.imageFetched(imageData: any())).thenDoNothing()
        }
    }

    // MARK: - ShowComicInteractorInput

    // MARK: fetchComic

    func testFetchComic_Successful() {
        // Arrange

        // Act
        showComicInteractor?.fetchComic()

        let comic = ComicFactory.getComic(id: 200)
        getLastComicSeal.fulfill(comic)

        let getLastComicExpectation = expectation(description: "Get last comic")
        getLastComicPromise.ensure {
            getLastComicExpectation.fulfill()
            self.getComicSeal.fulfill(comic) // resolve second promise in chain, after first one is resolved
        }.cauterize()

        let getComicExpectation = expectation(description: "Get comic")
        getComicPromise.ensure {
            getComicExpectation.fulfill()
        }.cauterize()

        // Assert
        wait(for: [getLastComicExpectation, getComicExpectation], timeout: 5)
        verify(apiService).getLastComic()
        verify(apiService).getComic(id: anyInt())
        verify(showComicInteractorOutput).comicFetched(comic: equal(to: comic))
    }

    func testFetchComic_GetLastComicFailed() {
        // Arrange - Act
        showComicInteractor?.fetchComic()

        getLastComicSeal.reject(ShowComicInteractorTestsError.getLastComicFailed)

        let expectationPromiseChain = expectation(description: "Finish promise chaining")
        getLastComicPromise.ensure {
            expectationPromiseChain.fulfill()
        }.cauterize()

        wait(for: [expectationPromiseChain], timeout: 5)

        // Assert
        verify(apiService).getLastComic()
        verify(showComicInteractorOutput).comicFetchFailed(message: "Could not fetch comic")
    }

    func testFetchComic_GetComicFailed() {
        // Arrange - Act
        showComicInteractor?.fetchComic()

        let comic = ComicFactory.getComic(id: 200)

        getLastComicSeal.fulfill(comic)

        let expectationGetLastComic = expectation(description: "Get last comic")
        getLastComicPromise.ensure {
            expectationGetLastComic.fulfill()
            self.getComicSeal.reject(ShowComicInteractorTestsError.getComicFailed) // reject second promise in chain, after first one is resolved
        }.cauterize()

        let expectationGetComic = expectation(description: "Get comic")
        getComicPromise.ensure {
            expectationGetComic.fulfill()
        }.cauterize()

        wait(for: [expectationGetLastComic, expectationGetComic], timeout: 5)

        // Assert
        verify(apiService).getLastComic()
        verify(showComicInteractorOutput).comicFetchFailed(message: "Could not fetch comic")
    }

    // MARK: fetchImage(fromURL)

    func testFetchImage_OutputImageFetchedCalled() {
        // Arrange
        let (promise, seal) = Promise<Data>.pending()
        stub(imageDownloader) { stub in
            when(stub.fetchImage(fromUrl: any())).thenReturn(promise)
        }

        // Act
        let url = URL(string: "my-url")!
        showComicInteractor?.fetchImage(fromUrl: url)

        let data = Data()
        seal.fulfill(data)

        let expectation = self.expectation(description: "Image fetched")
        promise.ensure {
            expectation.fulfill()
        }.cauterize()

        // Assert
        waitForExpectations(timeout: 5, handler: nil)
        verify(imageDownloader).fetchImage(fromUrl: equal(to: url))
        verify(showComicInteractorOutput).imageFetched(imageData: equal(to: data))
    }

    func testFetch_OutputImageFetchedFailedCalled() {
        // Arrange
        let (promise, seal) = Promise<Data>.pending()
        stub(imageDownloader) { stub in
            when(stub.fetchImage(fromUrl: any())).thenReturn(promise)
        }

        // Act
        let url = URL(string: "my-url")!
        showComicInteractor?.fetchImage(fromUrl: url)

        let error = ShowComicInteractorTestsError.fetchImageFailed
        seal.reject(error)

        let expectation = self.expectation(description: "Image fetched")
        promise.ensure {
            expectation.fulfill()
        }.cauterize()

        // Assert
        waitForExpectations(timeout: 5, handler: nil)
        verify(imageDownloader).fetchImage(fromUrl: equal(to: url))
        verify(showComicInteractorOutput).comicFetchFailed(message: equal(to: "Could not fetch comic image"))
    }
}
