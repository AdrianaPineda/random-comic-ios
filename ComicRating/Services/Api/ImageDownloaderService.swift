//
//  ImageDownloader.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Alamofire
import AlamofireImage
import Foundation
import PromiseKit

class ImageDownloaderService: ImageDownloaderServiceInterface {
    // MARK: - Promises

    func fetchImage(fromUrl url: URL) -> Promise<Data> {
        return Promise { seal in
            AF.request(url).responseImage { (response: AFDataResponse<Image>) in

                guard let data = response.data else {
                    seal.reject(Http.RequestError.invalidResponse("invalid data when downloading image"))
                    return
                }
                seal.fulfill(data)
            }
        }
    }
}
