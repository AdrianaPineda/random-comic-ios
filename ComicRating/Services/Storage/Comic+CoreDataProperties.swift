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

extension ComicMO {
    @nonobjc public class func createFetchRequest() -> NSFetchRequest<ComicMO> {
        return NSFetchRequest<ComicMO>(entityName: "Comic")
    }

    @NSManaged public var date: Date
    @NSManaged public var id: Int16
    @NSManaged public var title: String
    @NSManaged public var img: URL
    @NSManaged public var rating: Int16
}
