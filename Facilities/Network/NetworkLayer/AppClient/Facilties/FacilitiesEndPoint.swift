//
//  FacilitiesEndPoint.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
import Alamofire


enum FacilitiesEndPoint: APIConfigurations {
    
    case getDepartmentServices(parameters: FacilitiesParameters)
    
    var method: HTTPMethod {
        switch self {
        case .getDepartmentServices:
            return .post
        }
    }

     var encoding: ParameterEncoding {
        switch method {
        case .get:
            return URLEncoding.default
        case .post:
          return  JSONEncoding.default
        default:
           return JSONEncoding.default
    }
    }

    var path: String {
        switch self {
        case .getDepartmentServices:
            return "getDepartmentServices"
        }
    }

    var parameters: Parameters? {
        switch self {
        case .getDepartmentServices(let parameters):
            return parameters.dictionary
        }
    }


}

