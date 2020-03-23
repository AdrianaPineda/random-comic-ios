//
//  NetworkProtocol.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
enum HTTPMethod {
    case GET
    case POST
}

protocol NetworkProtocol {
    func request(method: HTTPMethod, url: String, params: AnyObject?)
}
