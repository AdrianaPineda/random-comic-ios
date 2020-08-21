//
//  CGSize+Extensions.swift
//  ComicRating
//
//  Created by Adriana Pineda on 21/08/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit

extension CGSize {
    static func aspectFit(aspectRatio: CGSize, boundingSize: CGSize) -> CGSize {
        var modifiedBoundingSize = boundingSize
        let modifiedWidth = modifiedBoundingSize.width / aspectRatio.width
        let modifiedHeight = modifiedBoundingSize.height / aspectRatio.height

        if modifiedHeight < modifiedWidth {
            modifiedBoundingSize.width = modifiedBoundingSize.height / aspectRatio.height * aspectRatio.width
        } else if modifiedWidth < modifiedHeight {
            modifiedBoundingSize.height = modifiedBoundingSize.width / aspectRatio.width * aspectRatio.height
        }

        return modifiedBoundingSize
    }
}
