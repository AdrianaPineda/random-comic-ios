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
    @IBOutlet var comicImageView: UIImageView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var ratingView: RatingView!
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!

    var output: ShowComicViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        ratingView.delegate = self
    }

    // MARK: ShowComicViewInput

    func setupInitialState() {}
    @IBAction func nextButtonClicked(_: Any) {
        output.nextButtonClicked()
    }
}

// MARK: - ShowComicViewInput

extension ShowComicViewController: ShowComicViewInput {
    func showComic(comic: UpcomingComic) {
        comicTitleLabel.text = comic.title
        comicNumberLabel.text = "#\(comic.number)"
        comicImageView.image = UIImage(data: comic.img)
    }

    func resetRating() {
        ratingView.resetRating()
    }

    func showLoadingContent() {
        //        self.animateSkeletonView() // custom skeleton
        showAnimatedGradient()
    }

    private func showLoadingIndicatorAndDim() {
        loadingIndicator.isHidden = false
        loadingIndicator.startAnimating()
        addDim()
    }

    func stopLoadingContent() {
//        self.stopSkeletonViewAnimation() // custom skeleton
        stopAnimatedGradient()
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

    // MARK: Skeleton view lib

    private func showAnimatedGradient() {
        comicImageView.showAnimatedGradientSkeleton()
        comicTitleLabel.showAnimatedGradientSkeleton()
        comicNumberLabel.showAnimatedGradientSkeleton()
        ratingView.showAnimatedGradientSkeleton()
    }

    private func stopAnimatedGradient() {
        comicImageView.hideSkeleton()
        comicTitleLabel.hideSkeleton()
        comicNumberLabel.hideSkeleton()
        ratingView.hideSkeleton()
    }

    // MARK: My Skeleton View

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
