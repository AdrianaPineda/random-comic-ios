//
//  ShowComicConfiguratorTests.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 26/07/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import XCTest

class ShowComicViewControllerMock: ShowComicViewController {}

class ShowComicConfiguratorTests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConfigureModuleForViewController() {
        // Arrange
        let viewController = ShowComicViewControllerMock()
        let configurator = ShowComicModuleConfigurator()

        // Act
        configurator.configureModuleForViewInput(viewInput: viewController)

        // Assert
        XCTAssertNotNil(viewController.output, "ShowComicViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ShowComicPresenter, "output is not ShowComicPresenter")

        let presenter: ShowComicPresenter = viewController.output as! ShowComicPresenter
        XCTAssertNotNil(presenter.view, "view in ShowComicPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ShowComicPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ShowComicRouter, "router is not ShowComicRouter")
        XCTAssertTrue(presenter.interactor is ShowComicInteractor,
                      "interactor is not ShowComicInteractor")

        let interactor: ShowComicInteractor = presenter.interactor as! ShowComicInteractor
        XCTAssertNotNil(interactor.output, "output in ShowComicInteractor is nil after configuration")
    }
}
