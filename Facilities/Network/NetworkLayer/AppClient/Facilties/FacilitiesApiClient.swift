//
//  FacilitiesApiClient.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
class FacilitiesApiClient {
    func getSettings(parameters: FacilitiesParameters,completion:@escaping (ApiClient.HandleResponse<[FacilitiesData]?>)) {
        let endPoint = FacilitiesEndPoint.getDepartmentServices(parameters: parameters)
        ApiClient.CallApi(endPoint: endPoint, completion: completion)
    }

}
