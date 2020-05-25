//
//  ComicStorageService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 16/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import CoreData
import Foundation
import UIKit

class ComicStorageService: ComicStorageServiceInterface {
    private lazy var viewContext: NSManagedObjectContext? = {
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
            return nil
        }
        let viewContext = appDelegate.persistentContainer.viewContext
        viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        return viewContext
    }()

    func upsertComicRating(comicRating: ComicRating) {
        guard let managedContext = viewContext else {
            return
        }

        let rating = Rating(context: managedContext)
        rating.id = Int16(comicRating.id)
        rating.rating = Int16(comicRating.rating)

//        let comicManagedObject = NSEntityDescription.insertNewObject(forEntityName: entityName, into: managedContext)
//        comicManagedObject.setValue(comicRating.id, forKeyPath: "id")
//        comicManagedObject.setValue(comicRating.rating, forKeyPath: "rating")

        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Comic could not be saved: \(error.localizedDescription)")
        }
    }

    func getComicRating() -> [ComicRating] {
        guard let managedContext = viewContext else {
            return []
        }

        let fetchRequest = Rating.createFetchRequest()
        var comics: [ComicRating] = []
        do {
            let comicsManagedObjects = try managedContext.fetch(fetchRequest)
            comics = toComics(managedObjects: comicsManagedObjects)
        } catch let error as NSError {
            print("Could not load comics: \(error.localizedDescription)")
        }

        return comics
    }

    private func toComics(managedObjects: [NSManagedObject]) -> [ComicRating] {
        var comics: [ComicRating] = []
        for object in managedObjects {
            if let comicRating = object.toComicRating() {
                comics.append(comicRating)
            }
        }

        return comics
    }
}

extension NSManagedObject {
    func toComicRating() -> ComicRating? {
        guard let id: Int = value(forKey: "id") as? Int else {
            return nil
        }

        guard let rating: Int16 = value(forKey: "rating") as? Int16 else {
            return nil
        }

        let comic = ComicRating(id: id, rating: UInt8(rating))
        return comic
    }
}
