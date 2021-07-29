//
//  FacilitiesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FacilitiesDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    init() {
        UIScrollView.appearance().backgroundColor = .backgroundColor
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                Color(.systemBackground)
                    .frame(minHeight: 200, maxHeight: .infinity)
                    .cornerRadius(12)
                    .padding(.horizontal)
                    .shadow(radius: 10)
                VStack {
                    Image("ImageBanner")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10,corners: [.topLeft,.topRight])
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                    VStack(alignment: .leading) {
                        Text("This Service enables the individuals to using the city's building escalator ")
                            .font(.body)
                            .minimumScaleFactor(0.75)
                            .foregroundColor(.black)
                        Spacer()
                            PrerequisitesView()
                            RequireDocumentsView()
                            FeesView()
                            TimeView()
                            ServicesView()
                    }.padding(.horizontal, 35)
                    Spacer()
                }
                
            }.padding([.top, .bottom], 20)
        }
        .navigationTitle("User Clinic Escalator License")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonView())
    }
}

struct FacilitiesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesDetailsView()
            .previewDevice("iPhone 12")
    }
}

