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
    @IBOutlet var imageViewWidth: NSLayoutConstraint!

    private let maximumImageHeight: CGFloat = 430
    private let imageHorizontalPadding: CGFloat = 40

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
        comicImageView.frame.size.height = maximumImageHeight
        comicImageView.frame.size.width = view.frame.width - imageHorizontalPadding

        let image = UIImage(data: imageData)
        comicImageView.image = image
        comicImageView.layer.cornerRadius = 10

        if let imageSize = image?.size {
            let sizeBeingScaledTo = CGSize.aspectFit(aspectRatio: imageSize, boundingSize: comicImageView.frame.size)
            imageViewHeight.constant = sizeBeingScaledTo.height
            imageViewWidth.constant = sizeBeingScaledTo.width
        }
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

extension CGSize {
    static func aspectFit(aspectRatio: CGSize, boundingSize: CGSize) -> CGSize {
        var modifiedBoundingSize = boundingSize
        let mW = modifiedBoundingSize.width / aspectRatio.width
        let mH = modifiedBoundingSize.height / aspectRatio.height

        if mH < mW {
            modifiedBoundingSize.width = modifiedBoundingSize.height / aspectRatio.height * aspectRatio.width
        } else if mW < mH {
            modifiedBoundingSize.height = modifiedBoundingSize.width / aspectRatio.width * aspectRatio.height
        }

        return modifiedBoundingSize
    }

    static func aspectFill(aspectRatio: CGSize, minimumSize: inout CGSize) -> CGSize {
        let mW = minimumSize.width / aspectRatio.width
        let mH = minimumSize.height / aspectRatio.height

        if mH > mW {
            minimumSize.width = minimumSize.height / aspectRatio.height * aspectRatio.width
        } else if mW > mH {
            minimumSize.height = minimumSize.width / aspectRatio.width * aspectRatio.height
        }

        return minimumSize
    }
}
