//
//  ShowComicShowComicViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import SkeletonView
import UIKit

class ShowComicViewController: DimmableViewController {
    @IBOutlet var comicTitleLabel: UILabel!
    @IBOutlet var comicNumberLabel: UILabel!
    @IBOutlet var comicDateLabel: UILabel!
    @IBOutlet var comicImageView: UIImageView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var ratingView: RatingView!
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet var imageViewHeight: NSLayoutConstraint!

    private let maximumImageHeight: CGFloat = 430

    var output: ShowComicViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        ratingView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }

    @IBAction func nextButtonClicked(_: Any) {
        output.nextButtonClicked()
    }
}

// MARK: - ShowComicViewInput

extension ShowComicViewController: ShowComicViewInput {
    func setupInitialState() {}

    func showComic(comic: UpcomingComic) {
        comicTitleLabel.text = comic.title
        comicTitleLabel.textColor = UIConfiguration.sharedInstance.getTitlesColor()

        comicNumberLabel.text = "Issue #\(comic.number)"
        comicNumberLabel.textColor = UIConfiguration.sharedInstance.getSubtitlesColor()

        comicDateLabel.text = comic.date
        comicDateLabel.textColor = UIConfiguration.sharedInstance.getSubtitlesColor()
    }

    func showImage(imageData: Data) {
        let image = UIImage(data: imageData)
        if let imageHeight = image?.size.height {
            imageViewHeight.constant = imageHeight < maximumImageHeight ? imageHeight : maximumImageHeight
        }
        comicImageView.image = image
    }

    func resetRating() {
        ratingView.resetRating()
    }

    func showLoadingContent(onElement element: Element) {
        switch element {
        case .text:
            comicTitleLabel.showAnimatedGradientSkeleton()
            comicNumberLabel.showAnimatedGradientSkeleton()
        case .image:
            comicImageView.showAnimatedGradientSkeleton()
        case .rating:
            ratingView.showAnimatedGradientSkeleton()
        }
    }

    func stopLoadingContent(onElement element: Element) {
        switch element {
        case .text:
            comicTitleLabel.hideSkeleton()
            comicNumberLabel.hideSkeleton()
        case .image:
            comicImageView.hideSkeleton()
        case .rating:
            ratingView.hideSkeleton()
        }
    }

    private func showLoadingIndicatorAndDim() {
        loadingIndicator.isHidden = false
        loadingIndicator.startAnimating()
        addDim()
    }

    private func stopLoadingIndicatorAndDim() {
        loadingIndicator.stopAnimating()
        removeDim()
    }

    func showOkAlertMessage(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }

    // MARK: My (custom) Skeleton View

    private func animateSkeletonView() {
        comicImageView.animateSkeletonView()
        comicTitleLabel.animateSkeletonView()
        comicNumberLabel.animateSkeletonView()
        ratingView.animateSkeletonView()
    }

    private func stopSkeletonViewAnimation() {
        comicImageView.stopSkeletonViewAnimation()
        comicTitleLabel.stopSkeletonViewAnimation()
        comicNumberLabel.stopSkeletonViewAnimation()
        ratingView.stopSkeletonViewAnimation()
    }
}

extension ShowComicViewController: RatingDelegate {
    func didRate(rating: UInt8) {
        print("Comic rated: ", rating)
        output.comicRated(rating: rating)
    }
}
