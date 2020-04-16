//
//  ShowComicShowComicViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicViewController: DimmableViewController {
    @IBOutlet var comicTitleLabel: UILabel!
    @IBOutlet var comicImageView: UIImageView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var ratingView: Rating!
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!

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
        self.comicImageView.image = UIImage(data: comic.img)
    }

    func resetRating() {
        self.ratingView.resetRating()
    }

    func showLoadingIndicator() {
        self.loadingIndicator.isHidden = false
        self.loadingIndicator.startAnimating()
        self.addDim()
    }

    func stopLoadingIndicator() {
        self.loadingIndicator.stopAnimating()
        self.removeDim()
    }
}

extension ShowComicViewController: RatingDelegate {
    func didRate(rating: Int) {
        print("Comic rated: ", rating)
        self.output.comicRated(rating: rating)
    }
}
