//
//  ComicHistoryComicHistoryPresenterTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class ComicHistoryPresenterTest: XCTestCase {
    let comicHistoryPresenter = ComicHistoryPresenter()
    let view = MockComicHistoryViewInput()
    let interactor = MockComicHistoryInteractorInput()

    override func setUp() {
        super.setUp()

        comicHistoryPresenter.view = view
        comicHistoryPresenter.interactor = interactor

        setupViewStub()
    }

    private func setupViewStub() {
        stub(view) { stub in
            when(stub.showComics(comics: any())).thenDoNothing()
            when(stub.showImageAtIndex(index: any(), image: any())).thenDoNothing()
        }
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // MARK: - ComicHistoryInteractorOutput

    func testComicsLoaded_WithEmptyArray() {
        // Act
        let comics: [Comic] = []
        comicHistoryPresenter.comicsLoaded(comics: comics)

        // Assert
        let comicsForCell: [ComicForCell] = []
        verify(view).showComics(comics: equal(to: comicsForCell))
    }

    func testComicsLoaded_WithSeveralComics() {
        // Arrange
        stub(interactor) { stub in
            when(stub.fetchImage(fromUrl: any(), id: any())).thenDoNothing()
        }

        // Act
        let comics: [Comic] = ComicsFactory.getComics(number: 5)
        comicHistoryPresenter.comicsLoaded(comics: comics)

        // Assert
        let comicsForCell = [
            ComicForCell.fromComic(comic: comics[0]),
            ComicForCell.fromComic(comic: comics[1]),
            ComicForCell.fromComic(comic: comics[2]),
            ComicForCell.fromComic(comic: comics[3]),
            ComicForCell.fromComic(comic: comics[4])
        ]
        verify(view).showComics(comics: equal(to: comicsForCell))
    }
}
