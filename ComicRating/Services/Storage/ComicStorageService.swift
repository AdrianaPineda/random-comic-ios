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

    func upsertComic(comic: Comic) {
        guard let managedContext = viewContext else {
            return
        }

        let rating = ComicMO(context: managedContext)
        rating.id = Int16(comic.id)
        rating.date = comic.date
        rating.title = comic.title
        rating.img = comic.img
        guard let ratingValue = comic.rating else {
            print("Cannot store comic without rating")
            return
        }
        rating.rating = Int16(ratingValue)

        // Manually:
//        let comicManagedObject = NSEntityDescription.insertNewObject(forEntityName: entityName, into: managedContext)
//        comicManagedObject.setValue(comicRating.id, forKeyPath: "id")
//        comicManagedObject.setValue(comicRating.rating, forKeyPath: "rating")

        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Comic could not be saved: \(error.localizedDescription)")
        }
    }

    func getComics() -> [Comic] {
        guard let managedContext = viewContext else {
            return []
        }

        let fetchRequest = ComicMO.createFetchRequest()
        var comics: [Comic] = []
        do {
            let comicsManagedObjects = try managedContext.fetch(fetchRequest)
            comics = toComics(managedObjects: comicsManagedObjects)
        } catch let error as NSError {
            print("Could not load comics: \(error.localizedDescription)")
        }

        return comics
    }

    private func toComics(managedObjects: [NSManagedObject]) -> [Comic] {
        var comics: [Comic] = []
        for object in managedObjects {
            if let comic = object.toComic() {
                comics.append(comic)
            }
        }

        return comics
    }
}

extension NSManagedObject {
    func toComic() -> Comic? {
        guard let id: Int = value(forKey: "id") as? Int else {
            return nil
        }

        guard let date: Date = value(forKey: "date") as? Date else {
            return nil
        }

        guard let title: String = value(forKey: "title") as? String else {
            return nil
        }

        guard let img: URL = value(forKey: "img") as? URL else {
            return nil
        }

        guard let rating: Int16 = value(forKey: "rating") as? Int16 else {
            return nil
        }

        let comic = Comic(id: id, date: date, title: title, img: img, rating: UInt8(rating))
        return comic
    }
}
