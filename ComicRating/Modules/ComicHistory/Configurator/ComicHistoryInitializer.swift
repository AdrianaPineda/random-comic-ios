//
//  ComicHistoryComicHistoryInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ComicHistoryModuleInitializer: NSObject {
    // Connect with object on storyboard
    @IBOutlet var comichistoryViewController: ComicHistoryViewController!

    override func awakeFromNib() {
        let configurator = ComicHistoryModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: comichistoryViewController)
    }
}
