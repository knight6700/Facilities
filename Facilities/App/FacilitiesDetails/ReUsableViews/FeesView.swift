//
//  FeesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FeesView: View {
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "fees", text: "Fees")
            VStack (alignment: .leading) {
                Text("1500 AED")
            }
            .foregroundColor(.black)
        }
    }
}

struct FeesView_Previews: PreviewProvider {
    static var previews: some View {
        FeesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
