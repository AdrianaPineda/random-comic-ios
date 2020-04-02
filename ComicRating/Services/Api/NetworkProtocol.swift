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


protocol NetworkProtocol {
    func request<T>(method: Http.Method, url: String, params: [String: Any]?, responseType: T.Type, completion: @escaping (Swift.Result<T, Http.RequestError>) -> Void) where T: Decodable
    func request<T>(method: Http.Method, url: String, params: [String: Any]?, responseType: T.Type) -> Promise<T> where T: Decodable
}
