//
//  ComicHistoryComicHistoryViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ComicHistoryViewController: UIViewController, ComicHistoryViewInput {

    var output: ComicHistoryViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: ComicHistoryViewInput
    func setupInitialState() {
    }
}
