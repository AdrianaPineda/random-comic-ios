//
//  HttpService.swift
//  ComicRating
//
//  Created by Adriana Pineda on 27/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Alamofire
import PromiseKit
import UIKit

class HttpService: HttpServiceInterface {
    func getAlamofireHttpMethod(method: Http.Method) -> HTTPMethod {
        switch method {
        case .get:
            return HTTPMethod.get
        default:
            return HTTPMethod.post
        }
    }

    // MARK: - Completion handlers

    func request<T>(method: Http.Method, url: String, params: [String: Any]?, responseType: T.Type,
                    completion: @escaping (Swift.Result<T, Http.RequestError>) -> Void) where T: Decodable {
        let alamofireHttpMethod = getAlamofireHttpMethod(method: method)
        AF.request(url, method: alamofireHttpMethod, parameters: params).responseJSON { response in

            print("====", response)

            guard let data = response.data else {
                completion(.failure(Http.RequestError.invalidResponse("invalid data")))
                return
            }

            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(responseType, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(Http.RequestError.invalidResponse(error.localizedDescription)))
            }
        }
    }

    // MARK: - Promises

    func request<T>(method _: Http.Method, url: String, params: [String: Any]?, responseType: T.Type) -> Promise<T>
        where T: Decodable {
        //  TODO: map method

        return Promise { seal in
            AF.request(url, method: .get, parameters: params).responseJSON { response in
                print("====", response)

                guard let data = response.data else {
                    seal.reject(Http.RequestError.invalidResponse("invalid data"))
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(responseType, from: data)
                    seal.fulfill(response)
                } catch {
                    seal.reject(Http.RequestError.invalidResponse(error.localizedDescription))
                }
            }
        }
    }
}
