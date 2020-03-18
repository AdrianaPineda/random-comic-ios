//
//  ShowComicShowComicInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class ShowComicModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var showcomicViewController: ShowComicViewController!

    override func awakeFromNib() {

        let configurator = ShowComicModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showcomicViewController)
    }

}
