//
//  HttpClientInterface.swift
//  ComicRating
//
//  Created by Adriana Pineda on 22/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import PromiseKit

protocol HttpClientInterface {
    func request<T>(method: Http.Method, url: String, params: [String: Any]?, responseType: T.Type, completion: @escaping (Swift.Result<T, Http.RequestError>) -> Void) where T: Decodable
    func request<T>(method: Http.Method, url: String, params: [String: Any]?, responseType: T.Type) -> Promise<T> where T: Decodable
}
