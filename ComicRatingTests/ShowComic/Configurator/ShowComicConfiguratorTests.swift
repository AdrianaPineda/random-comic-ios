//
//  ShowComicShowComicConfiguratorTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import XCTest

class ShowComicModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = ShowComicViewControllerMock()
        let configurator = ShowComicModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ShowComicViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ShowComicPresenter, "output is not ShowComicPresenter")

        let presenter: ShowComicPresenter = viewController.output as! ShowComicPresenter
        XCTAssertNotNil(presenter.view, "view in ShowComicPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ShowComicPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ShowComicRouter, "router is not ShowComicRouter")

        let interactor: ShowComicInteractor = presenter.interactor as! ShowComicInteractor
        XCTAssertNotNil(interactor.output, "output in ShowComicInteractor is nil after configuration")
    }

    class ShowComicViewControllerMock: ShowComicViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
