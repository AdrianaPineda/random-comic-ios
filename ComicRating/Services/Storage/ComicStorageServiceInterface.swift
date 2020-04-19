//
//  ComicStorageServiceInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol ComicStorageServiceInterface: ServiceInterface {
    func saveComicRating(comicRating: ComicRating)
    func fetchComicRating() -> [ComicRating]
}