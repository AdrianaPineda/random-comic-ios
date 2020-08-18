//
//  ComicHistoryComicHistoryViewTests.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import XCTest

class CustomCollectionView: UICollectionView {
    private(set) var reloadDataCalled = false
    private(set) var reloadItemsCalled = false
    private(set) var reloadItemsIndexPaths: [IndexPath] = []

    init() {
        let frame = CGRect(x: 0, y: 0, width: 100,
                           height: 100)
        let layout = UICollectionViewLayout()
        super.init(frame: frame, collectionViewLayout: layout)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func reloadData() {
        reloadDataCalled = true
    }

    override func reloadItems(at indexPaths: [IndexPath]) {
        reloadItemsCalled = true
        reloadItemsIndexPaths = indexPaths
    }
}

class ComicHistoryViewTests: XCTestCase {
    let output = MockComicHistoryViewOutput()
    var comicHistorViewController: ComicHistoryViewController?
    let collectionView = CustomCollectionView()

    override func setUp() {
        super.setUp()
        setupComicHistoryViewController()
        setupOutputStub()
    }

    private func setupComicHistoryViewController() {
        let storyboard = UIStoryboard(name: "ComicHistory", bundle: Bundle.main)
        comicHistorViewController = storyboard
            .instantiateViewController(withIdentifier: KComicHistoryViewControllerIdentifier) as? ComicHistoryViewController

        comicHistorViewController?.output = output
        comicHistorViewController?.collectionView = collectionView
    }

    private func setupOutputStub() {
        stub(output) { stub in
            when(stub.viewIsReady()).thenDoNothing()
        }
    }

    // MARK: - UICollectionViewController

    // MARK: viewWillAppear

    func testViewWillAppear_OutputViewIsReadyCalled() {
        // Arrange - Act
        comicHistorViewController?.viewWillAppear(true)

        // Assert
        verify(output).viewIsReady()
    }

    // MARK: - ComicHistoryViewInput

    // MARK: showComics(comics)

    func testShowComics() {
        // Arrange
        let comics = ComicsForCellFactory.getComics(number: 5)

        // Act
        comicHistorViewController?.showComics(comics: comics)

        // Assert
        XCTAssertTrue(collectionView.reloadDataCalled)
    }

    // MARK: showImageAtIndex(index, image)

    func testShowImageAtIndex() {
        // Arrange
        let index = 1
        let image = ComicImage.name("my image")
        let comics = ComicsForCellFactory.getComics(number: 5)
        comicHistorViewController?.showComics(comics: comics)

        // Act
        comicHistorViewController?.showImageAtIndex(index: index, image: image)

        // Assert
        XCTAssertTrue(collectionView.reloadItemsCalled)
        XCTAssertEqual(collectionView.reloadItemsIndexPaths[0].row, index)
        XCTAssertEqual(collectionView.reloadItemsIndexPaths[0].section, 0)
    }
}
