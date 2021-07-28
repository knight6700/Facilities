//
//  ContentView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            NavigationView{
                List{
                    ZStack {
                        Color(.systemBackground)
                            .frame(height: 250)
                            .cornerRadius(12)
                            .padding(.horizontal)
                            .shadow(radius: 10)
                        VStack(alignment: .leading) {
                            Image("ImageBanner")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10,corners: [.topLeft,.topRight])
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                            VStack(alignment: .leading){
                                Text("Facilities License")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.primaryColor)
                                Text("This is Services")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                
                            }.padding([.leading], 35)
                            Spacer()
                        }
                    }
                    .listRowBackground(Color.backgroundColor)
                }
                
                .navigationTitle("Facilities")
                .navigationBarTitleDisplayMode(.inline)
            }

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
