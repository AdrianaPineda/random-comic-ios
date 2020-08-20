//
//  ComicHistoryComicHistoryConfiguratorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import XCTest

class ComicHistoryViewControllerMock: ComicHistoryViewController {}

class ComicHistoryModuleConfiguratorTests: XCTestCase {
    func testConfigureModuleForViewController() {
        // Arrange
        let viewController = ComicHistoryViewControllerMock()
        let configurator = ComicHistoryModuleConfigurator()

        // Act
        configurator.configureModuleForViewInput(viewInput: viewController)

        // Assert
        XCTAssertNotNil(viewController.output, "ComicHistoryViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ComicHistoryPresenter, "output is not ComicHistoryPresenter")

        let presenter: ComicHistoryPresenter = viewController.output as! ComicHistoryPresenter
        XCTAssertNotNil(presenter.view, "view in ComicHistoryPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ComicHistoryPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ComicHistoryRouter, "router is not ComicHistoryRouter")
        XCTAssertTrue(presenter.interactor is ComicHistoryInteractor,
                      "interactor is not ComicHistoryInteractor")

        let interactor: ComicHistoryInteractor = presenter.interactor as! ComicHistoryInteractor
        XCTAssertNotNil(interactor.output, "output in ComicHistoryInteractor is nil after configuration")
    }
}
