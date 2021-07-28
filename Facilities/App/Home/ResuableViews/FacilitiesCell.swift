//
//  FacilitiesCell.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FacilitiesCell: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .frame(minHeight: 200, maxHeight: .infinity)
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
                    Text("This is Services enables the individuals to ...")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                    
                }.padding([.leading], 35)
                .padding(.trailing)
                Spacer()
                
            }
        }.padding([.top, .bottom], 10)
    }
}

struct FacilitiesCell_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesCell()
            .previewLayout(.sizeThatFits)
        
    }
}
