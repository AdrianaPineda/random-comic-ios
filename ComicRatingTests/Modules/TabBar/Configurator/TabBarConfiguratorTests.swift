//
//  TabBarTabBarConfiguratorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import XCTest

class TabBarModuleConfiguratorTests: XCTestCase {
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
        let viewController = TabBarViewControllerMock()
        let configurator = TabBarModuleConfigurator()

        // when
        configurator.configureModuleForViewInput(viewInput: viewController)

        // then
        XCTAssertNotNil(viewController.output, "TabBarViewController is nil after configuration")
        XCTAssertTrue(viewController.output is TabBarPresenter, "output is not TabBarPresenter")

        let presenter: TabBarPresenter = viewController.output as! TabBarPresenter
        XCTAssertNotNil(presenter.view, "view in TabBarPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in TabBarPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is TabBarRouter, "router is not TabBarRouter")

        let interactor: TabBarInteractor = presenter.interactor as! TabBarInteractor
        XCTAssertNotNil(interactor.output, "output in TabBarInteractor is nil after configuration")
    }

    class TabBarViewControllerMock: TabBarViewController {
        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
