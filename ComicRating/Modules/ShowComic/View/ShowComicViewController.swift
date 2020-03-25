//
//  ShowComicShowComicViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicViewController: UIViewController {
    @IBOutlet var comicTitle: UILabel!
    @IBOutlet weak var comicImage: UIImageView!
    var output: ShowComicViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: ShowComicViewInput

    func setupInitialState() {}
}

extension ShowComicViewController: ShowComicViewInput {
    func showComic(comic: Comic) {
        comicTitle.text = comic.title
    }
}
