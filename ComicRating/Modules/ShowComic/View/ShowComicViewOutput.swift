//
//  ShowComicShowComicViewOutput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol ShowComicViewOutput {
    /**
     @author Adriana Pineda
     Notify presenter that view is ready
     */

    func viewIsReady()
    func nextButtonClicked()
    func comicRated(rating: UInt8)
}
