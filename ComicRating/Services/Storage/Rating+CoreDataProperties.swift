//
//  Rating+CoreDataProperties.swift
//  ComicRating
//
//  Created by Adriana Pineda on 01/05/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
//

import CoreData
import Foundation

extension Rating {
    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Rating> {
        return NSFetchRequest<Rating>(entityName: "Rating")
    }

    @NSManaged public var id: Int16
    @NSManaged public var rating: Int16
}
