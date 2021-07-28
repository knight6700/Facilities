//
//  TimeView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct TimeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "time", text: "Time")
            VStack (alignment: .leading) {
                Text("5 Working Days")
            }
            .foregroundColor(.black)
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
