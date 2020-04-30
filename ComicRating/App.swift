//
//  App.swift
//  ComicRating
//
//  Created by Adriana Pineda on 24/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation

final class App {
    // MARK: - properties

    let services = ServiceBuilder()

    // MARK: - singleton

    static let shared = App()

    // MARK: - init

    private init() {
        services.setup()
    }
}
