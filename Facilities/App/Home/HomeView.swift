//
//  ContentView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = ViewModel()

    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
        UITableView.appearance().backgroundColor = .backgroundColor
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    
                    ForEach(viewModel.facilitiesModel) { item in
                        NavigationLink(
                            destination: FacilitiesDetailsView(viewModel: viewModel.setupDetailsViewModel(facility: item)),
                            label: {
                                FacilitiesCell(model: item)
                            })
                            .background(Color.backgroundColor)
                            .listRowBackground(Color.backgroundColor)
                            .listRowInsets(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
                            .listStyle(PlainListStyle())
                            .listSeparatorStyle(style: .none)
                    }

                    if !viewModel.isLoadMore && viewModel.newPages != 0 {
                        LoadingView().onAppear{
                            viewModel.load()
                        }

                    }

                }
                
                .modifier(CustomNavigationModifiers())
                if viewModel.isLoadMore && viewModel.facilitiesModel.count == 0 {
                    LoadingView().onAppear{
                        viewModel.load()
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12")
    }
}
