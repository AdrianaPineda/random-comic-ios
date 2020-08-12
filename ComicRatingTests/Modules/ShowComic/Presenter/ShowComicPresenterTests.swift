//
//  ShowComicPresenterTests.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 10/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
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
        }
    }

    private func setupInteractorStub() {
        stub(interactor) { stub in
            when(stub.fetchComic()).thenDoNothing()
        }
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - ShowComicViewOutput

    func testViewIsReady() {
        // Arrange - Act
        showComicPresenter.viewIsReady()

        // Assert
        verify(interactor).fetchComic()
        verify(view).showLoadingContent(onElement: equal(to: Element.text))
        verify(view).showLoadingContent(onElement: equal(to: Element.rating))
        verify(view).showLoadingContent(onElement: equal(to: Element.image))
    }

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
}
