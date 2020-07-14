//
//  ComicHistoryComicHistoryInteractorOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation

protocol ComicHistoryInteractorOutput: AnyObject {
    func comicsLoaded(comics: [Comic])
    func imageFetched(imageData: Data, id: Int)
    func imageFetchFailed(id: Int)
}
