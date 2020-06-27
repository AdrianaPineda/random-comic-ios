//
//  TabBarInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 21/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
let KTabBarControllerIdentifier = "tabBarVC"

class TabBarInitializer: NSObject {
    @IBOutlet var tabBarController: TabBarViewController!

    override func awakeFromNib() {
        let tabBarConfigurator = TabBarConfigurator()
        tabBarConfigurator.configureModuleForViewInput(viewInput: tabBarController)
    }

    static func tabBarController() -> TabBarViewController? {
        let storyboard = UIStoryboard(name: "TabBar", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KTabBarControllerIdentifier)
        return viewController as? TabBarViewController
    }
}
