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
    private let entityName = "ComicRatings"

    private lazy var persistentContainer: NSPersistentContainer? = {
        if let appDelegate =
            UIApplication.shared.delegate as? AppDelegate {
            return appDelegate.persistentContainer
        }
        return nil
    }()

    func saveComicRating(comicRating: ComicRating) {
        guard let managedContext = self.persistentContainer?.viewContext else {
            return
        }

        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: managedContext) else {
            return
        }

        let comicManagedObject = NSManagedObject(entity: entity, insertInto: managedContext)
        comicManagedObject.setValue(comicRating.id, forKeyPath: "id")
        comicManagedObject.setValue(comicRating.rating, forKeyPath: "rating") // TODO:

        do {
            try managedContext.save()

        } catch let error as NSError {
            print("Comic could not be saved: \(error.localizedDescription)")
        }
    }

    func fetchComicRating() -> [ComicRating] {
        guard let managedContext = self.persistentContainer?.viewContext else {
            return []
        }

        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)
        var comics: [ComicRating] = []
        do {
            let comicsManagedObjects = try managedContext.fetch(fetchRequest)
            comics = self.toComics(managedObjects: comicsManagedObjects)
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
