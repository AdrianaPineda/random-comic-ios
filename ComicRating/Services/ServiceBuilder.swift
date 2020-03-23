//
//  ServiceBuilder.swift
//  ComicRating
//
//  Created by Adriana Pineda on 23/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

class ServiceBuilder: ServiceBuilderInterface {
    lazy var comicApi: ComicApiServiceInterface = {
        ComicApiService(baseUrl: "https://xkcd.com")
    }()
}
