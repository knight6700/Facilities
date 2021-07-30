//
//  ApiConstant.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
import Alamofire
struct Constants {
    struct ProductionServer {
        static var baseUrl = "https://dhcr.gov.ae/MobileWebAPI/api/Common/ServiceCatalogue/"
    }
    struct APIParameterKey {
        static let apiKey = ""
    }
    static let lang = String(Locale.preferredLanguages[0].prefix(2))
}
enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
    case local = "Locale"
}

enum ContentType: String {
    case contentType = "application/json"

}
