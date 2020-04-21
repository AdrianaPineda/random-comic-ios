//
//  ComicRatingManagedObject.swift
//  ComicRating
//
//  Created by Adriana Pineda on 21/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import UIKit
import CoreData

class ComicRatingManagedObject: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var rating: Int
}
