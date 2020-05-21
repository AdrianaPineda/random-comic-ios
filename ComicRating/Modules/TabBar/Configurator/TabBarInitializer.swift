//
//  TabBarInitializer.swift
//  ComicRating
//
//  Created by Adriana Pineda on 21/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
let KTabBarControllerIdentifier = "tabBarC"

class TabBarInitializer: NSObject {
    static func tabBarController() -> UITabBarController? {
        let storyboard = UIStoryboard(name: "TabBar", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KComicHistoryViewControllerIdentifier)
        return viewController as? UITabBarController
    }
}
