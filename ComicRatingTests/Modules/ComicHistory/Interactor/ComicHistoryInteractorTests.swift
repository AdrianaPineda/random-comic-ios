//
//  ComicHistoryComicHistoryInteractorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class ComicHistoryInteractorTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // MARK: ComicHistoryInteractorInput

    func testGetComics() {
        let comicStorageService = MockComicStorageService()
        let output = MockComicHistoryInteractorOutput()
        let imageDownloaderService = MockImageDownloaderService()

        let comics = ComicsFactory.getComics(number: 5)
        stub(comicStorageService) { stub in
            when(stub.getComics()).thenReturn(comics)
        }

        stub(output) { stub in
            when(stub.comicsLoaded(comics: any())).thenDoNothing()
        }

        let comicHistoryInteractor = ComicHistoryInteractor(storageService: comicStorageService,
                                                            imageDownloader: imageDownloaderService)
        comicHistoryInteractor.output = output

        comicHistoryInteractor.getComics()

        verify(comicStorageService).getComics()
        verify(output).comicsLoaded(comics: equal(to: comics))
    }
}
