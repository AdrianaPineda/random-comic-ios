//
//  TabBarTabBarPresenterTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class TabBarPresenterTest: XCTestCase {
    let router = MockTabBarRouterInput()
    let view = MockTabBarViewInput()
    let tabBarPresenter = TabBarPresenter()

    override func setUp() {
        super.setUp()
        setupPresenter()
        setupViewStub()
    }

    private func setupPresenter() {
        tabBarPresenter.view = view
        tabBarPresenter.router = router
    }

    private func setupViewStub() {
        stub(view) { stub in
            when(stub.setup(viewControllers: any([UIViewController].self))).thenDoNothing()
        }
    }

    func testViewIsReady_WhenTabSectionsAreNil_ViewSetupNotCalled() {
        // Arrange
        stub(router) { stub in
            when(stub.getTabSections()).thenReturn(nil)
        }

        // Act
        tabBarPresenter.viewIsReady()

        // Assert
        verify(router).getTabSections()
        verify(view, times(0)).setup(viewControllers: any())
    }

    func testViewIsReady_WhenTabSectionsAreValid_ViewSetupCalled() {
        // Arrange
        let tabSections: TabSections = (showComic: UIViewController(), history: UIViewController())
        stub(router) { stub in
            when(stub.getTabSections()).thenReturn(tabSections)
        }

        // Act
        tabBarPresenter.viewIsReady()

        // Assert
        verify(router).getTabSections()
        let viewControllers = [tabSections.showComic, tabSections.history]
        verify(view).setup(viewControllers: equal(to: viewControllers))
    }
}
