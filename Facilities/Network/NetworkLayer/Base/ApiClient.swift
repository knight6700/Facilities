//
//  ApiClient.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
import Alamofire
 class ApiClient {
    
    public typealias HandleResponse<T: Decodable> = (_ results: DefaultResponses<T>?, _ error: Error? ) -> Void

    @discardableResult
    private static func performRequest<T: Decodable>(route: APIConfigurations, completion:@escaping (DefaultResponses<T>?, Error?,Int?) -> Void) -> DataRequest {
        
        return AF.request(route).responseJSON(completionHandler: { (response) in
            switch response.result {
            case .success(let value):
                    print(value)
                do {
                    let DataResponsed = try JSONDecoder().decode(DefaultResponses<T>.self, from: response.data!)
                    completion(DataResponsed, nil, response.response?.statusCode)
                } catch {
                    print(error)
                    completion(nil, error,response.response?.statusCode)
                }
            case .failure(let error):
                print(error)
                completion(nil, error, response.response?.statusCode)
            }
        })
    }
    
    // func Generic post // get
    static func CallApi<T: Decodable> (endPoint: APIConfigurations, completion:@escaping (HandleResponse<T>)  ) {
        performRequest(route: endPoint) { (results, error,code) in
            completion(results, error)
        }
    }
    
}
