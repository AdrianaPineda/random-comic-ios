//
//  Http.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

enum Http {
    enum Method {
        case get
        case post
    }

    enum RequestError: Error {
        case invalidResponse(String?)
        case statusCode(Int)
        case unknown(Swift.Error)
    }
}

// enum HTTP {
//
//    enum Method: String {
//        case get
//        //...
//    }
//    enum Error: LocalizedError {
//        case invalidResponse
//        case statusCode(Int)
//        case unknown(Swift.Error)
//    }
// }
