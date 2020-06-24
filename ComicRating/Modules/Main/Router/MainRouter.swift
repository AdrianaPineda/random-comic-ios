//
//  MainRouter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 06/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class MainRouter {
    var tabBarController: UITabBarController?

    func presentViewControllerFromWindow(window: UIWindow) {
        if tabBarController == nil {
            print("Invalid tabBarController")
            return
        }

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}
