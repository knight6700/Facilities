//
//  HomeViewModel.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var pageNumber = 1
    @Published var isLoadMore = true
    @Published var facilitiesModel: [FacilitiesData] = []
    @Published var showAlert: Bool = false
    @Published var newPages = 1

    let api = FacilitiesApiClient()
    func load() {
        isLoadMore = true
       let parameters = FacilitiesParameters(pageSize: "10", pageIndex: String(pageNumber), departmentId: "2")
        api.getSettings(parameters: parameters) {[weak self] result, error in
            self?.isLoadMore = false
            guard error == nil else {return}
            guard let result = result else {return}
            self?.facilitiesModel.append(contentsOf: result.data ?? [])
            self?.newPages = result.data?.count ?? 0
            if self?.newPages != 0 {
                self?.pageNumber += 1
            }
        }
    }
    
    func setupDetailsViewModel(facility: FacilitiesData) -> ContainerDetailsViewModel {
        let viewModel = ContainerDetailsViewModel(facility: facility)
        return viewModel
    }
}
