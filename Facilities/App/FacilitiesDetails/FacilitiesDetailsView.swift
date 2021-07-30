//
//  FacilitiesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FacilitiesDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var viewModel: ContainerDetailsViewModel
    init(viewModel: ContainerDetailsViewModel) {
        UIScrollView.appearance().backgroundColor = .backgroundColor
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ZStack {
                ContainerDetailsView()
                VStack {
                    FacilitiesRemoteImage(urString: viewModel.imageSrc)
                        .cornerRadius(10,corners: [.topLeft,.topRight])
                        .frame(height: 150)
                        .padding(.horizontal)
                    VStack(alignment: .leading) {
                        Text(viewModel.brief)
                            .font(.body)
                            .minimumScaleFactor(0.75)
                            .foregroundColor(.black)
                        Spacer()
                        
                        PrerequisitesView(code: viewModel.prerequisite, dynamicHeight: 0)
                        
                        RequireDocumentsView(code: viewModel.requiredDocument, dynamicHeight: 0)
                        FeesView(code: viewModel.fees, dynamicHeight: 0)
                        TimeView(code: viewModel.time)
                        ServicesView(code: viewModel.serviceChannel)
                    }
                    .padding(.horizontal, 35)
                    Spacer()
                }
                
            }.padding([.top, .bottom], 20)
        }
        .navigationTitle(viewModel.title)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonView())
    }
}

struct FacilitiesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesDetailsView(viewModel: ContainerDetailsViewModel(facility: FacilitiesMockAp.departmentSample))
            .previewDevice("iPhone 12")
    }
}

