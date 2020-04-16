//
//  ComicStorageServiceInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol ComicStorageServiceInterface: ServiceInterface {
    func saveRating(comic: Comic, rating: Int)
    func fetchRatings() -> [(Comic, Int)]
}
