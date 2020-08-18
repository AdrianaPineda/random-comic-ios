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
    @IBOutlet var showComicViewController: ShowComicViewController!

    override func awakeFromNib() {
        let configurator = ShowComicModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showComicViewController)
    }
}

class ShowComicModuleBuilder: NSObject {
    func getViewController() -> ShowComicViewController? {
        let storyboard = UIStoryboard(name: "ShowComic", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KShowComicViewControllerIdentifier)
        return viewController as? ShowComicViewController
    }
}
