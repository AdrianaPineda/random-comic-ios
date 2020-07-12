//
//  RatingInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 13/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

protocol RatingInterface: UIView {
    var delegate: RatingDelegate? { get }
    func resetRating()
    func setRating(rating: UInt8)
    func setStarSize(size: CGSize)
}
