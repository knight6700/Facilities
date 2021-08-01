//
//  FacilitiesCell.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FacilitiesCell: View {
   @State var model: FacilitiesData
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .frame(minHeight: 200, maxHeight: .infinity)
                .cornerRadius(12)
                .padding(.horizontal)
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                FacilitiesRemoteImage(urString: model.imageSrc)
                    .cornerRadius(10,corners: [.topLeft,.topRight])
                    .frame(height: 150)
                    .padding(.horizontal)

                VStack(alignment: .leading){
                    Text(model.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.titleColor)
                        .lineLimit(1)
                        .minimumScaleFactor(0.75)
                        .padding(.trailing)
                    Text(model.briefTrimmed)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                        .minimumScaleFactor(0.75)

                    
                }.padding([.leading], 35)
                .padding(.trailing)
                Spacer()
                
            }
        }.padding([.top, .bottom], 10)
    }
}

struct FacilitiesCell_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesCell(model: FacilitiesMockUp.departmentSample)
            .previewLayout(.sizeThatFits)
            .background(Color.backgroundColor)
        
    }
}
