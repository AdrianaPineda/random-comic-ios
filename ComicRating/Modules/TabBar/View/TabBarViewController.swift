//
//  TabBarViewController.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/06/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, TabBarViewInput {
    var output: TabBarViewOutput!

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: TabBarViewInput

    func setupInitialState() {}
}
