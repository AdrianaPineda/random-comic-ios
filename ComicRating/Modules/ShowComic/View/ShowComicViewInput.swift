//
//  ShowComicShowComicViewInput.swift
//  ComicRating
//
//  Created by Adriana Pineda on 17/02/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

enum Element {
    case text, image, rating
}

protocol ShowComicViewInput: AnyObject {
    /**
     @author Adriana Pineda
     Setup initial state of the view
     */

    func setupInitialState()
    func showComic(comic: UpcomingComic)
    func showImage(imageData: Data)
    func resetRating()
    func showLoadingContent(onElement element: Element)
    func stopLoadingContent(onElement element: Element)
    func showOkAlertMessage(title: String, message: String)
}
