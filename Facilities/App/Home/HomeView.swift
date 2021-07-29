//
//  ContentView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(1..<10, id: \.self) { view in
                        VStack {
                            NavigationLink(
                                destination: FacilitiesDetailsView(),
                                label: {
                                    FacilitiesCell()
                                })
                        }
                        .background(Color.backgroundColor)
                        .listRowBackground(Color.backgroundColor)
                        .listRowInsets(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
                        .listStyle(PlainListStyle())
                        .listSeparatorStyle(style: .none)
                    }
                }
                .background(Color.backgroundColor)
                .listStyle(PlainListStyle())
            }
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
