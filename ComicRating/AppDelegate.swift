//
//  AppDelegate.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow()

        if let window = self.window {
            window.rootViewController = ViewController()
            window.makeKeyAndVisible()
        }

        return true
    }
}
