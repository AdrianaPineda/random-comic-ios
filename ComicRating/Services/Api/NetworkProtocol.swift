//
//  NetworkProtocol.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//
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
import PromiseKit

enum MyHTTPMethod {
    case GET
    case POST
}

enum RequestError: Error {
    case invalidResponse(String?)
    case statusCode(Int)
    case unknown(Swift.Error)
}


protocol NetworkProtocol {
    func request<T>(method: MyHTTPMethod, url: String, params: [String: Any]?, responseType: T.Type, completion: @escaping (Swift.Result<T, RequestError>) -> Void) where T: Decodable
    func request<T>(method: MyHTTPMethod, url: String, params: [String: Any]?, responseType: T.Type) -> Promise<T> where T: Decodable
}
