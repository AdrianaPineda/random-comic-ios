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
    @IBOutlet weak var comicTitleLabel: UILabel!
    @IBOutlet weak var comicNumberLabel: UILabel!
    @IBOutlet weak var comicImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var ratingView: RatingView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!

    var output: ShowComicViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output.viewIsReady()
        self.ratingView.delegate = self
    }

    // MARK: ShowComicViewInput

    func setupInitialState() {}
    @IBAction func nextButtonClicked(_ sender: Any) {
        self.output.nextButtonClicked()
    }
}

// MARK: - ShowComicViewInput

extension ShowComicViewController: ShowComicViewInput {
    func showComic(comic: UpcomingComic) {
        self.comicTitleLabel.text = comic.title
        self.comicNumberLabel.text = "#\(comic.number)"
        self.comicImageView.image = UIImage(data: comic.img)
    }

    func resetRating() {
        self.ratingView.resetRating()
    }

    func showLoadingContent() {
        //        self.animateSkeletonView() // custom skeleton
        self.showAnimatedGradient()
    }

    private func showLoadingIndicatorAndDim() {
        self.loadingIndicator.isHidden = false
        self.loadingIndicator.startAnimating()
        self.addDim()
    }

    func stopLoadingContent() {
//        self.stopSkeletonViewAnimation() // custom skeleton
        self.stopAnimatedGradient()
    }

    private func stopLoadingIndicatorAndDim() {
        self.loadingIndicator.stopAnimating()
        self.removeDim()
    }

    // MARK: Skeleton view lib

    private func showAnimatedGradient() {
        self.comicImageView.showAnimatedGradientSkeleton()
        self.comicTitleLabel.showAnimatedGradientSkeleton()
        self.comicNumberLabel.showAnimatedGradientSkeleton()
        self.ratingView.showAnimatedGradientSkeleton()
    }

    private func stopAnimatedGradient() {
        self.comicImageView.hideSkeleton()
        self.comicTitleLabel.hideSkeleton()
        self.comicNumberLabel.hideSkeleton()
        self.ratingView.hideSkeleton()
    }

    // MARK: My Skeleton View

    private func animateSkeletonView() {
        self.comicImageView.animateSkeletonView()
        self.comicTitleLabel.animateSkeletonView()
        self.comicNumberLabel.animateSkeletonView()
        self.ratingView.animateSkeletonView()
    }

    private func stopSkeletonViewAnimation() {
        self.comicImageView.stopSkeletonViewAnimation()
        self.comicTitleLabel.stopSkeletonViewAnimation()
        self.comicNumberLabel.stopSkeletonViewAnimation()
        self.ratingView.stopSkeletonViewAnimation()
    }
}

extension ShowComicViewController: RatingDelegate {
    func didRate(rating: Int) {
        print("Comic rated: ", rating)
        self.output.comicRated(rating: rating)
    }
}
