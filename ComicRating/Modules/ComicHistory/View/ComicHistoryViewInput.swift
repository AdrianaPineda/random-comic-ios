//
//  ComicHistoryComicHistoryViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 12/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

protocol ComicHistoryViewInput: AnyObject {
    /**
     @author Adriana Pineda
     Setup initial state of the view
     */

    func setupInitialState()
    func showComics(comics: [ComicForCell])
    func showLoadingOnImages()
    func showImageAtIndex(index: Int, image: ComicImage)
}
