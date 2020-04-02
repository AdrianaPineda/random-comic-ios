//
//  ServiceBuilderInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 23/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol ServiceBuilderInterface {
    var comicApi: ComicApiServiceInterface { get }
    func setup()
}

extension ServiceBuilderInterface {
    func setup() {
        self.comicApi.setup()
    }
}
