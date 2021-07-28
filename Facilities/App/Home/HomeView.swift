//
//  ContentView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct HomeView: View {
    init() {
        UIScrollView.appearance().backgroundColor = .backgroundColor
    }
    var body: some View {
        ZStack {
            Color(.primaryColor)
                .edgesIgnoringSafeArea(.all)
            
            NavigationView{
                ScrollView(.vertical,showsIndicators: false){
                    ForEach (0 ..< 10){ index in
                        NavigationLink(
                            destination: FacilitiesDetailsView(),
                            label: {
                                FacilitiesCell()

                            })
                    }.background(Color.backgroundColor)
                    
                }
                .animation(.default)
                .navigationTitle("Facilities")
                .navigationBarTitleDisplayMode(.inline)

            }.background(Color.backgroundColor)
            .foregroundColor(Color.backgroundColor)

            .listSeparatorStyle(style: .none)
            .navigationAppearance(backgroundColor: .primaryColor, foregroundColor: .systemBackground, tintColor: .white, hideSeparator: false)
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12")
    }
}
