//
//  ComicHistoryComicHistoryConfiguratorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

@testable import ComicRating
import XCTest

class ComicHistoryModuleConfiguratorTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {
        // given
        let viewController = ComicHistoryViewControllerMock()
        let configurator = ComicHistoryModuleConfigurator()

        // when
        configurator.configureModuleForViewInput(viewInput: viewController)

        // then
        XCTAssertNotNil(viewController.output, "ComicHistoryViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ComicHistoryPresenter, "output is not ComicHistoryPresenter")

        let presenter: ComicHistoryPresenter = viewController.output as! ComicHistoryPresenter
        XCTAssertNotNil(presenter.view, "view in ComicHistoryPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ComicHistoryPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ComicHistoryRouter, "router is not ComicHistoryRouter")

        let interactor: ComicHistoryInteractor = presenter.interactor as! ComicHistoryInteractor
        XCTAssertNotNil(interactor.output, "output in ComicHistoryInteractor is nil after configuration")
    }
}
