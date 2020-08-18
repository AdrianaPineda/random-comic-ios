//
//  ComicHistoryComicHistoryInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
let KComicHistoryViewControllerIdentifier = "comicHistoryVC"

class ComicHistoryModuleInitializer: NSObject {
    // Connect with object on storyboard
    @IBOutlet var comicHistoryViewController: ComicHistoryViewController!

    override func awakeFromNib() {
        let configurator = ComicHistoryModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: comicHistoryViewController)
    }
}

class ComicHistoryModuleBuilder: NSObject {
    func getViewController() -> ComicHistoryViewController? {
        let storyboard = UIStoryboard(name: "ComicHistory", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KComicHistoryViewControllerIdentifier)
        return viewController as? ComicHistoryViewController
    }
}
