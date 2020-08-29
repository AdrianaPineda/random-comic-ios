//
//  Dimmable.swift
//  ComicRating
//
//  Created by Adriana Pineda on 14/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import UIKit

protocol Dimmable {
    func addDim(color: UIColor?, alpha: CGFloat?)
    func removeDim()
}
