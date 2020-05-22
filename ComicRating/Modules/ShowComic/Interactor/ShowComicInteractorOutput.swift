//
//  ShowComicShowComicInteractorOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Foundation

protocol ShowComicInteractorOutput: AnyObject {
    func comicFetched(comic: Comic, imgData: Data)
    func comicFetchFailed(message: String)
}
