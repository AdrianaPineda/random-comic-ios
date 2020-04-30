//
//  ImageDownloader.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation
import PromiseKit

protocol ImageDownloaderServiceInterface: ServiceInterface {
    // MARK: - Promises

    func fetchImage(fromUrl url: String) -> Promise<Data>
}
