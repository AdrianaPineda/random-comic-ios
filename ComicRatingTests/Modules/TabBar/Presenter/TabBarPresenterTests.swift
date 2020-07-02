//
//  TabBarTabBarPresenterTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import XCTest

class TabBarPresenterTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: TabBarInteractorInput {}

    class MockRouter: TabBarRouterInput {}

    class MockViewController: TabBarViewInput {
        func setupInitialState() {}
    }
}
