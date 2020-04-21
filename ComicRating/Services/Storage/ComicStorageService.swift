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
    private let entityName = "Rating"

    private lazy var viewContext: NSManagedObjectContext? = {
        if let appDelegate =
            UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.persistentContainer.viewContext
        }
        return nil
    }()

    func saveComicRating(comicRating: ComicRating) {
        guard let managedContext = self.viewContext else {
            return
        }

        guard let comicManagedObject = self.getManagedObject(id: comicRating.id, managedContext: managedContext) else {
            return
        }

        comicManagedObject.setValue(comicRating.id, forKeyPath: "id")
        comicManagedObject.setValue(comicRating.rating, forKeyPath: "rating") // TODO:

        do {
            try managedContext.save()

        } catch let error as NSError {
            print("Comic could not be saved: \(error.localizedDescription)")
        }
    }

    private func getManagedObject(id: Int, managedContext: NSManagedObjectContext) -> NSManagedObject? {
        let predicate = NSPredicate(format: "id == \(id)")
        let comicsManagedObjects = self.fetchComicRating(withPredicate: predicate, managedContext: managedContext) // send context?

        if comicsManagedObjects.isEmpty {
            guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: managedContext) else {
                return nil
            }

            return NSManagedObject(entity: entity, insertInto: managedContext)
        }
        return comicsManagedObjects[0]
    }

    func fetchComicRating() -> [ComicRating] {
        guard let managedContext = self.viewContext else {
            return []
        }

        let comicsManagedObjects = self.fetchComicRating(withPredicate: nil, managedContext: managedContext)
        let comics = self.toComics(managedObjects: comicsManagedObjects)
        return comics
    }

    private func fetchComicRating(withPredicate predicate: NSPredicate?, managedContext: NSManagedObjectContext) -> [NSManagedObject] {
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)
        fetchRequest.predicate = predicate
        var result: [NSManagedObject] = []
        do {
            result = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not load comics: \(error.localizedDescription)")
        }

        return result
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
        guard let id: Int = self.value(forKey: "number") as? Int else {
            return nil
        }

        guard let rating: Int = self.value(forKey: "rating") as? Int else {
            return nil
        }

        let comic = ComicRating(id: id, rating: rating)
        return comic
    }
}
