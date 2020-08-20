//
//  ShowComicPresenterTests.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 10/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import Foundation
import XCTest

class ShowComicPresenterTests: XCTestCase {
    let view = MockShowComicViewInput()
    let interactor = MockShowComicInteractorInput()
    let showComicPresenter = ShowComicPresenter()

    override func setUp() {
        showComicPresenter.interactor = interactor
        showComicPresenter.view = view
        setupViewStub()
        setupInteractorStub()
    }

    private func setupViewStub() {
        stub(view) { stub in
            when(stub.showLoadingContent(onElement: equal(to: Element.text))).thenDoNothing()
            when(stub.showLoadingContent(onElement: equal(to: Element.rating))).thenDoNothing()
            when(stub.showLoadingContent(onElement: equal(to: Element.image))).thenDoNothing()
            when(stub.resetRating()).thenDoNothing()
            when(stub.stopLoadingContent(onElement: equal(to: Element.text))).thenDoNothing()
            when(stub.stopLoadingContent(onElement: equal(to: Element.rating))).thenDoNothing()
            when(stub.stopLoadingContent(onElement: equal(to: Element.image))).thenDoNothing()
            when(stub.showComic(comic: any(UpcomingComic.self))).thenDoNothing()
            when(stub.showImage(imageData: any(Data.self))).thenDoNothing()
            when(stub.showOkAlertMessage(title: anyString(), message: anyString())).thenDoNothing()
        }
    }

    private func setupInteractorStub() {
        stub(interactor) { stub in
            when(stub.fetchComic()).thenDoNothing()
            when(stub.fetchImage(fromUrl: any())).thenDoNothing()
            when(stub.comicRated(any(UInt8.self))).thenDoNothing()
        }
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - ShowComicViewOutput

    // MARK: viewIsReady

    func testViewIsReady() {
        // Arrange - Act
        showComicPresenter.viewIsReady()

        // Assert
        verify(interactor).fetchComic()
        verify(view).showLoadingContent(onElement: equal(to: Element.text))
        verify(view).showLoadingContent(onElement: equal(to: Element.rating))
        verify(view).showLoadingContent(onElement: equal(to: Element.image))
    }

    // MARK: nextButtonClicked

    func testNextButtonClicked() {
        // Arrange - Act
        showComicPresenter.nextButtonClicked()

        // Assert
        verify(interactor).fetchComic()
        verify(view).showLoadingContent(onElement: equal(to: Element.text))
        verify(view).showLoadingContent(onElement: equal(to: Element.rating))
        verify(view).showLoadingContent(onElement: equal(to: Element.image))
    }

    // MARK: - ShowComicInteractorOutput

    // MARK: comicFetched(comic)

    func testComicFetched() {
        // Arrange
        let comic = ComicFactory.getComic(id: 2462)

        // Act
        showComicPresenter.comicFetched(comic: comic)

        // Assert
        verify(view).resetRating()
        verify(view).stopLoadingContent(onElement: equal(to: Element.text))
        let upcomingComic = UpcomingComic.fromComic(comic: comic)
        verify(view).showComic(comic: equal(to: upcomingComic))
        verify(interactor).fetchImage(fromUrl: equal(to: comic.img))
    }

    // MARK: imageFetched(imageData)

    func testImageFetched() {
        // Arrange
        let imgData = Data(capacity: 2)

        // Act
        showComicPresenter.imageFetched(imageData: imgData)

        // Assert
        verify(view).stopLoadingContent(onElement: equal(to: Element.rating))
        verify(view).stopLoadingContent(onElement: equal(to: Element.image))
        verify(view).showImage(imageData: equal(to: imgData))
    }

    // MARK: comicRated(rating)

    func testComicRated() {
        // Arrange
        let rating: UInt8 = 2

        // Act
        showComicPresenter.comicRated(rating: rating)

        // Assert
        verify(interactor).comicRated(equal(to: rating))
    }

    // MARK: comicFetchFailed(message)

    func testComicFetchFailed() {
        // Arrange
        let message = "Comic fetch failed"

        // Act
        showComicPresenter.comicFetchFailed(message: message)

        // Assert
        verify(view).showOkAlertMessage(title: "Error", message: message)
    }
}
