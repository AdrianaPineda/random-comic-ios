//
//  MainRouter.swift
//  ComicRating
//
//  Created by Adriana Pineda on 06/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation
import UIKit

class MainRouter: MainRouterInput {
    var mainViewController: UIViewController

    init(mainViewController: UIViewController) {
        self.mainViewController = mainViewController
    }

    func presentViewControllerFromWindow(window: UIWindow) {
        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
    }
}
