//
//  ShowComicShowComicViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicViewController: UIViewController {
    @IBOutlet var comicTitleLabel: UILabel!
    @IBOutlet weak var comicImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    var output: ShowComicViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
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
        comicTitleLabel.text = comic.title
        comicImageView.image = UIImage(data: comic.img)
    }
}
