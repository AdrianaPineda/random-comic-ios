//
//  AppDependencies.swift
//  ComicRating
//
//  Created by Adriana Pineda on 19/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    var mainRouter: MainRouterInput?

    init() {
        mainRouter = MainRouterFactory.build()
    }

    func setRootViewControllerInWindow(window: UIWindow) {
        guard let mainRouter = mainRouter else {
            print("Invalid main view controller")
            return
        }
        mainRouter.presentViewControllerFromWindow(window: window)
    }
}
