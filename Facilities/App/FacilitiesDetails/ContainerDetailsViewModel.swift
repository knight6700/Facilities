//
//  ContainerDetailsViewModel.swift
//  Facilities
//
//  Created by Mahmoud Fares on 30/07/2021.
//

import Foundation
class ContainerDetailsViewModel {
    private var facility: FacilitiesData
    
    var imageSrc: String {
        facility.imageSrc
    }
    
    var brief: String {
        facility.brief
    }
    
    var title: String {
        facility.title
    }
    
    var prerequisite: String {
        facility.prerequisites
    }
    
    var requiredDocument: String {
        facility.requiredDocuments
    }
    
    var fees: String {
        facility.fees
    }
    
    var time: String {
        facility.timeFrame
    }
    
    var serviceChannel: String {
        facility.serviceChannels
    }
    
    
    init(facility: FacilitiesData) {
        self.facility = facility
    }
}
