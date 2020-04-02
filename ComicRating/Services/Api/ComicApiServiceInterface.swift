//
//  ComicApiClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import PromiseKit
import UIKit

protocol ComicApiServiceInterface: ServiceInterface {
    var baseUrl: String { get set }
    func getComic(id: Int, completion: @escaping ((Comic) -> Void))
    func getLastComic(completion: @escaping ((Comic) -> Void))
    func getComic(id: Int) -> Promise<Comic>
    func getLastComic() -> Promise<Comic>
}
