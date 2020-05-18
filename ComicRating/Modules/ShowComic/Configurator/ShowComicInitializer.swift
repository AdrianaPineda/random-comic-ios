//
//  ShowComicInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 18/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
let KShowComicViewControllerIdentifier = "showComicVC"

class ShowComicModuleInitializer: NSObject {
    @IBOutlet var showComicViewController: ComicHistoryViewController!

    override func awakeFromNib() {
        let configurator = ShowComicModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showComicViewController)
    }

    static func comicHistoryViewController() -> ComicHistoryViewController? {
        let storyboard = UIStoryboard(name: "ComicHistory", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KComicHistoryViewControllerIdentifier)
        return viewController as? ComicHistoryViewController
    }
}
