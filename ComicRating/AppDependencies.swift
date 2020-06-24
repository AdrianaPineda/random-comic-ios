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
    var mainRouter: MainRouter?

    public init() {
        let mainConfigurator = MainConfigurator()
        mainRouter = mainConfigurator.configureMainRouter()
    }

    func setRootViewControllerInWindow(window: UIWindow) {
        mainRouter?.presentViewControllerFromWindow(window: window)
    }
}
