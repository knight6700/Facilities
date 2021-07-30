//
//  FacilitiesParameters.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
struct  FacilitiesParameters: Encodable {
    var pageSize: Int
    var pageIndex: String
    var departmentId: String
    enum CodingKeys: String, CodingKey {
        case pageSize = "PageSize"
        case pageIndex = "PageIndex"
        case departmentId = "DepartmentID"
    }
}
