//
//  HomeViewModel.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import Foundation
class ViewModel: ObservableObject {
    @Published var pageNumber = 1
    @Published var isLoadMore = false
    func load() {
        isLoadMore = true
    }
}
