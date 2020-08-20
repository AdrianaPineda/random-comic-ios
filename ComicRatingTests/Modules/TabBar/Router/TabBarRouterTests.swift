//
//  TabBarTabBarRouterTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class TabBarRouterTests: XCTestCase {
    var tabRouter: TabBarRouter?
    let showComicModuleBuilder = MockShowComicModuleBuilder()
    let comicHistoryModuleBuilder = MockComicHistoryModuleBuilder()

    override func setUp() {
        super.setUp()
        setupTabBarRouter()
    }

    private func setupTabBarRouter() {
        tabRouter = TabBarRouter()
        tabRouter?.showComicModuleBuilder = showComicModuleBuilder
        tabRouter?.comicHistoryModuleBuilder = comicHistoryModuleBuilder
    }

    func testGetTabSections_WhenShowComicAndComicHistoryViewControllersAreNil_ReturnsNil() {
        // Arrange
        stub(showComicModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(nil)
        }

        stub(comicHistoryModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(nil)
        }

        // Act
        let tabSections = tabRouter?.getTabSections()

        // Assert
        XCTAssertNil(tabSections)
        verify(showComicModuleBuilder).getViewController()
        verify(comicHistoryModuleBuilder).getViewController()
    }

    func testGetTabSections_WhenShowComicViewControllerIsNil_ReturnsNil() {
        // Arrange
        stub(showComicModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(nil)
        }

        let comicHistoryViewController = MockComicHistoryViewController()
        stub(comicHistoryModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(comicHistoryViewController)
        }

        // Act
        let tabSections = tabRouter?.getTabSections()

        // Assert
        XCTAssertNil(tabSections)
        verify(showComicModuleBuilder).getViewController()
        verify(comicHistoryModuleBuilder).getViewController()
    }

    func testGetTabSections_WhenComicHistoryViewControllerIsNil_ReturnsNil() {
        // Arrange
        let showComicViewController = MockShowComicViewController()
        stub(showComicModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(showComicViewController)
        }

        stub(comicHistoryModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(nil)
        }

        // Act
        let tabSections = tabRouter?.getTabSections()

        // Assert
        XCTAssertNil(tabSections)
        verify(showComicModuleBuilder).getViewController()
        verify(comicHistoryModuleBuilder).getViewController()
    }

    func testGetTabSections_WhenViewControllersAreValid_ReturnsValidTabSection() {
        // Arrange
        let showComicViewController = MockShowComicViewController()
        stub(showComicModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(showComicViewController)
        }

        let comicHistoryViewController = MockComicHistoryViewController()
        stub(comicHistoryModuleBuilder) { stub in
            when(stub.getViewController()).thenReturn(comicHistoryViewController)
        }

        // Act
        let tabSections = tabRouter?.getTabSections()

        // Assert
        XCTAssertNotNil(tabSections)
        XCTAssertEqual(tabSections?.showComic, showComicViewController)
        XCTAssertEqual(tabSections?.history, comicHistoryViewController)
        verify(showComicModuleBuilder).getViewController()
        verify(comicHistoryModuleBuilder).getViewController()
    }
}
