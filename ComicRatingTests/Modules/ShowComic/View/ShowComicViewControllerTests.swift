//
//  ShowComicViewControllerTests.swift
//  ComicRatingTests
//
//  Created by Adriana Pineda on 15/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
@testable import ComicRating
import Cuckoo
import SkeletonView
import XCTest

class MockRatingView: RatingView {
    override func setRating(rating _: UInt8) {}

    override func setStarSize(size _: CGSize) {}

    private(set) var resetRatingCalled = false

    override func resetRating() {
        resetRatingCalled = true
    }
}

let KShowComicViewControllerIdentifier = "showComicVC"

class ShowComicViewControllerTests: XCTestCase {
    var showComicViewController: ShowComicViewController?
    let output = MockShowComicViewOutput()
    let ratingView = MockRatingView()

    override func setUp() {
        setupShowComicViewController()
        setupOutputStub()
    }

    private func setupShowComicViewController() {
        let storyboard = UIStoryboard(name: "ShowComic", bundle: Bundle.main)
        showComicViewController = storyboard.instantiateViewController(withIdentifier: KShowComicViewControllerIdentifier) as? ShowComicViewController

        showComicViewController?.output = output
        showComicViewController?.ratingView = ratingView

        showComicViewController?.comicTitleLabel = UILabel()
        showComicViewController?.comicNumberLabel = UILabel()
        showComicViewController?.comicImageView = UIImageView()
    }

    private func setupOutputStub() {
        stub(output) { stub in
            when(stub.viewIsReady()).thenDoNothing()
            when(stub.nextButtonClicked()).thenDoNothing()
            when(stub.comicRated(rating: any())).thenDoNothing()
        }
    }

    func testViewDidLoad() {
        // Arrange - Act
        showComicViewController?.viewDidLoad()

        // Assert
        verify(output).viewIsReady()
        XCTAssertTrue(ratingView.delegate is ShowComicViewController)
    }

    func testNextButtonClicked() {
        // Arrange - Act
        showComicViewController?.nextButtonClicked("test")

        // Assert
        verify(output).nextButtonClicked()
    }

    // MARK: - ShowComicViewInput

    // MARK: showComic(comic)

    func testShowComic() {
        // Arrange
        let comic = UpcomingComicFactory.getUpcomingComic(number: 12345)

        // Act
        showComicViewController?.showComic(comic: comic)

        // Assert
        XCTAssertEqual(showComicViewController?.comicTitleLabel.text, comic.title)
        XCTAssertEqual(showComicViewController?.comicNumberLabel.text, "#\(comic.number)")
    }

    // MARK: showImage()

    func testShowImage() {
        // Arrange
        let imgData = Data()

        // Act
        showComicViewController?.showImage(imageData: imgData)

        // Assert
        XCTAssertEqual(showComicViewController?.comicImageView.image, UIImage(data: imgData))
    }

    // MARK: resetRating()

    func testResetRating() {
        // Arrange - Act
        showComicViewController?.resetRating()

        // Assert
        XCTAssertTrue(ratingView.resetRatingCalled)
    }

    // MARK: - RatingDelegate

    func testDidRate() {
        // Arrange
        let rating: UInt8 = 5

        // Act
        showComicViewController?.didRate(rating: rating)

        // Assert
        verify(output).comicRated(rating: rating)
    }
}
