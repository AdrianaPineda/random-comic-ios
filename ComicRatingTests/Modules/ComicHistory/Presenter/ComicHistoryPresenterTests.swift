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

    // MARK: comicsLoaded(comics)

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

    // MARK: imageFetched(imageData, id)

    func testImageFetched() {
        // Act
        let data = Data()
        comicHistoryPresenter.imageFetched(imageData: data, id: 12345)

        // Assert
        let image: ComicImage = .data(data)
        verify(view).showImageAtIndex(index: 12345, image: equal(to: image))
    }

    // MARK: imageFetchFailed(id)

    func testImageFetchFailed() {
        // Act
        comicHistoryPresenter.imageFetchFailed(id: 4567)

        // Assert
        let image: ComicImage = .name("warning")
        verify(view).showImageAtIndex(index: 4567, image: equal(to: image))
    }
}
