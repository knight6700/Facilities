//
//  ApiConfiguration.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
import Alamofire
public protocol APIConfigurations: URLRequestConvertible {
    var method: HTTPMethod {get}
    var path: String {get}
    var parameters: Parameters? {get}
    var encoding: ParameterEncoding{get}
}
extension APIConfigurations {
    public func asURLRequest() throws -> URLRequest {
        let url = Constants.ProductionServer.baseUrl + path
        let finalURl = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        var urlRequest = URLRequest(url: URL(string: finalURl)!)
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        debugPrint(url)
        
        urlRequest.setValue( "en", forHTTPHeaderField: HTTPHeaderField.local.rawValue)
        if let parameters = parameters {
            do {
                debugPrint("PARMAETERS \(parameters)")
                urlRequest = try encoding.encode(urlRequest, with: parameters)
                let body = try JSONSerialization.data(withJSONObject: parameters)
                urlRequest.httpBody = body
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        // Parameters
        return  urlRequest
        
        
    }
}
