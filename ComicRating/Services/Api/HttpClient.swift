//
//  HttpClient.swift
//  ComicRating
//
//  Created by Adriana Pineda on 27/03/2020.
//  Copyright © 2020 Adriana Pineda. All rights reserved.
//

import Alamofire
import UIKit

class HttpClient: NetworkProtocol {
    func request<T>(method: MyHTTPMethod, url: String, params: [String: Any]?, responseType: T.Type, completion: @escaping (Result<T, RequestError>) -> Void) where T : Decodable {
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
}
