//
//  ContentView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = ViewModel()
    @State var numberOfPages = 10
    init() {
        UITableView.appearance().showsVerticalScrollIndicator = false
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().accessoryType = .none
        
        
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<10, id: \.self) { view in
                    NavigationLink(
                        destination: FacilitiesDetailsView(),
                        label: {
                            FacilitiesCell()
                        })
                        .background(Color.backgroundColor)
                        .listRowBackground(Color.backgroundColor)
                        .listRowInsets(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
                        .listStyle(PlainListStyle())
                        .listSeparatorStyle(style: .none)
                    
                }
                
                if viewModel.pageNumber < numberOfPages && viewModel.isLoadMore {
                    Text("Load More").onAppear (perform: {
                        viewModel.isLoadMore = true
                        viewModel.pageNumber += 1
                        viewModel.load()
                    })
                }
            }
            .background(Color.backgroundColor)
            .listStyle(PlainListStyle())
            .navigationTitle("Facilities")
            .navigationBarTitleDisplayMode(.inline)
            .navigationAppearance(backgroundColor: .primaryColor, foregroundColor: .systemBackground, tintColor: .white, hideSeparator: false)
            .animation(.default)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12")
    }
}
