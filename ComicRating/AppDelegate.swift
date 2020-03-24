//
//  AppDelegate.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
    let dependencies = AppDependencies()
}

extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        if let window = self.window {
            dependencies.setRootViewControllerInWindow(window: window)
        }
        return true
    }
}
