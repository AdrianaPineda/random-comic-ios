//
//  IntRandomNumber.swift
//  ComicRating
//
//  Created by Adriana Pineda on 25/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

class IntRandomNumber: RandomNumber {
    func get(from: Int, to: Int) -> Int {
        return Int.random(in: from ... to)
    }
}
