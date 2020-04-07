//
//  ShowComicShowComicViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol ShowComicViewInput: class {

    /**
        @author Adriana Pineda
        Setup initial state of the view
    */

    func setupInitialState()
    func showComic(comic: UpcomingComic)
}
