//
//  HttpClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 27/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Alamofire
import UIKit
import PromiseKit

class HttpClient: NetworkProtocol {
    func request<T>(method: MyHTTPMethod, url: String, params: [String: Any]?, responseType: T.Type, completion: @escaping (Swift.Result<T, RequestError>) -> Void) where T : Decodable {
        // TODP map method
        AF.request(url, method: .get, parameters: params).responseJSON { response in

            print("====", response)

            guard let data = response.data else {
                completion(.failure(RequestError.invalidResponse("invalid data")))
                return;
            }

            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(responseType, from: data)
                completion(.success(response))
            } catch let error {
                completion(.failure(RequestError.invalidResponse(error.localizedDescription)))
            }
        }
    }

    func request<T>(method: MyHTTPMethod, url: String, params: [String: Any]?, responseType: T.Type) -> Promise<T> where T: Decodable {
        // TODP map method

        return Promise { seal in
            AF.request(url, method: .get, parameters: params).responseJSON { response in
                print("====", response)

                guard let data = response.data else {
                    seal.reject(RequestError.invalidResponse("invalid data"))
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(responseType, from: data)
                    seal.fulfill(response)
                } catch {
                    seal.reject(RequestError.invalidResponse(error.localizedDescription))
                }
            }
        }
    }
}
