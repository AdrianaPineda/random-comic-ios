//
//  Http.swift
//  ComicRating
//
//  Created by Adriana Pineda on 07/04/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
import Foundation

enum Http {
    enum Method {
        case get
        case post
    }

    enum RequestError: LocalizedError {
        case invalidResponse(String?)
    }
}
