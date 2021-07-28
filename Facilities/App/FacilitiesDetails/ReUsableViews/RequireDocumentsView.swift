//
//  RequirmentDucomentsView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct RequireDocumentsView: View {
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "requireddoc", text: "Required Documents")
            VStack (alignment: .leading) {
                Text("National ID")
                Text("2 images")
                Text("Clinic License")
                Text("3 copy of clinic License")
            }
            .foregroundColor(.black)
        }
    }
}

struct RequireDocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        RequireDocumentsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
