//
//  TabBarTabBarViewTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class TabBarViewControllerTests: XCTestCase {
    let output = MockTabBarViewOutput()
    var tabBarViewController: TabBarViewController?

    override func setUp() {
        super.setUp()
        setupOutputStub()
        setupViewController()
    }

    private func setupViewController() {
        let storyboard = UIStoryboard(name: "TabBar", bundle: Bundle.main)
        tabBarViewController = storyboard
            .instantiateViewController(withIdentifier: KTabBarControllerIdentifier) as? TabBarViewController
        tabBarViewController?.output = output

        tabBarViewController?.loadViewIfNeeded()
    }

    private func setupOutputStub() {
        stub(output) { stub in
            when(stub.viewIsReady()).thenDoNothing()
        }
    }

    // MARK: - UITabBarController

    // MARK: viewDidLoad()

    func testViewDidLoad_OutputViewReadyCalled() {
        // Assert
        verify(output).viewIsReady()
    }

    // MARK: - TabBarViewInput

    // MARK: setup(viewControllers)

    func testSetup() {
        // Arrange
        let viewController = UIViewController()
        let viewControllers = [viewController]

        // Act
        tabBarViewController?.setup(viewControllers: viewControllers)

        // Assert
        XCTAssertEqual(tabBarViewController?.viewControllers, viewControllers)
    }
}
