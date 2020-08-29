//
//  RatingDelegate.swift
//  ComicRating
//
//  Created by Adriana Pineda on 13/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

protocol RatingDelegate: AnyObject {
    func didRate(rating: UInt8)
}
