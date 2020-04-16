//
//  ShowComicShowComicInteractorInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation

protocol ShowComicInteractorInput {
    func fetchComic()
    func comicRated(rating: Int)
}
