//
//  ComicHistoryComicHistoryInteractorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import PromiseKit
import XCTest

class ComicHistoryInteractorTests: XCTestCase {
    enum MyError: Error {
        case invalidImage
    }

    let comicStorageService = MockComicStorageService()
    let output = MockComicHistoryInteractorOutput()
    let imageDownloaderService = MockImageDownloaderService()

    var comicHistoryInteractor: ComicHistoryInteractor?

    override func setUp() {
        super.setUp()

        comicHistoryInteractor = ComicHistoryInteractor(storageService: comicStorageService,
                                                        imageDownloader: imageDownloaderService)
        comicHistoryInteractor?.output = output

        setupComicInteractorOutputStub()
    }

    private func setupComicInteractorOutputStub() {
        stub(output) { stub in
            when(stub.comicsLoaded(comics: any())).thenDoNothing()
            when(stub.imageFetched(imageData: any(), id: any())).thenDoNothing()
            when(stub.imageFetchFailed(id: any())).thenDoNothing()
        }
    }

    // MARK: - ComicHistoryInteractorInput

    // MARK: getComics()

    func testGetComics() {
        // Arrange
        let comics = ComicsFactory.getComics(number: 5)
        stub(comicStorageService) { stub in
            when(stub.getComics()).thenReturn(comics)
        }

        // Act
        comicHistoryInteractor?.getComics()

        // Assert
        verify(comicStorageService).getComics()
        verify(output).comicsLoaded(comics: equal(to: comics))
    }

    // MARK: fetchImage(fromUrl, id)

    func testFetchImage_OutputImageFetchedCalled() {
        // Arrange
        let (promise, seal) = Promise<Data>.pending()
        stub(imageDownloaderService) { stub in
            when(stub.fetchImage(fromUrl: any())).thenReturn(promise)
        }

        // Act
        let url = URL(string: "my-url")!
        comicHistoryInteractor?.fetchImage(fromUrl: url, id: 123)

        let data = Data()
        seal.fulfill(data)

        let expectation = self.expectation(description: "Image fetched")
        promise.ensure {
            expectation.fulfill()
        }.cauterize()

        // Assert
        waitForExpectations(timeout: 5, handler: nil)
        verify(imageDownloaderService).fetchImage(fromUrl: equal(to: url))
        verify(output).imageFetched(imageData: equal(to: data), id: 123)
    }

    func testFetch_OutputImageFetchedFailedCalled() {
        // Arrange
        let (promise, seal) = Promise<Data>.pending()
        stub(imageDownloaderService) { stub in
            when(stub.fetchImage(fromUrl: any())).thenReturn(promise)
        }

        // Act
        let url = URL(string: "my-url")!
        comicHistoryInteractor?.fetchImage(fromUrl: url, id: 123)

        let error = MyError.invalidImage
        seal.reject(error)

        let expectation = self.expectation(description: "Image fetched")
        promise.ensure {
            expectation.fulfill()
        }.cauterize()

        // Assert
        waitForExpectations(timeout: 5, handler: nil)
        verify(imageDownloaderService).fetchImage(fromUrl: equal(to: url))
        verify(output).imageFetchFailed(id: 123)
    }
}
