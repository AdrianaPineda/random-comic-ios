//
//  TabBarTabBarConfiguratorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import XCTest

class MockTabBarViewController: TabBarViewController {
    override func viewDidLoad() {}
}

class TabBarModuleConfiguratorTests: XCTestCase {
    func testConfigureModuleForViewController() {
        // Arrange
        let viewController = MockTabBarViewController()
        let configurator = TabBarConfigurator()

        // Act
        configurator.configureModuleForViewInput(viewInput: viewController)

        // Assert
        XCTAssertNotNil(viewController.output, "TabBarViewController is nil after configuration")
        XCTAssertTrue(viewController.output is TabBarPresenter, "output is not TabBarPresenter")

        let presenter: TabBarPresenter? = viewController.output as? TabBarPresenter
        XCTAssertNotNil(presenter?.view, "view in TabBarPresenter is nil after configuration")
        let router = presenter?.router as? TabBarRouter
        XCTAssertNotNil(router, "router in TabBarPresenter is nil after configuration")
        XCTAssertNotNil(router?.showComicModuleBuilder,
                        "showComicModuleBuilder in TabBarRouter is nil after configuration")
        XCTAssertNotNil(router?.comicHistoryModuleBuilder,
                        "comicHistoryModuleBuilder in TabBarRouter is nil after configuration")

        let interactor: TabBarInteractor? = presenter?.interactor as? TabBarInteractor
        XCTAssertNotNil(interactor?.output, "output in TabBarInteractor is nil after configuration")
    }
}
