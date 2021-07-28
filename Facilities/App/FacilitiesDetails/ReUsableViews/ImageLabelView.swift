//
//  ImageLabelView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct ImageLabelView: View {
    var imageName: String
    var text: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text(text)
                .fontWeight(.bold)
                .foregroundColor(.titleColor)
        }
    }
}

struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(imageName: "imageName", text: "National ID")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
