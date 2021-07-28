//
//  PrerequisitesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct PrerequisitesView: View {
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "prerequisites", text: "Prerequisites")
            VStack (alignment: .leading) {
                Text("National ID")
                Text("2 images")
                Text("At least to be 3rd floor")
            }
            .foregroundColor(.black)
        }
    }
    
}

struct PrerequisitesView_Previews: PreviewProvider {
    static var previews: some View {
        PrerequisitesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
