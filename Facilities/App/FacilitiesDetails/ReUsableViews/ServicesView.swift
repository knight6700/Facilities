//
//  ServicesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct ServicesView: View {
    var code: String
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "service", text: "Services Channels")
            VStack (alignment: .leading) {
                Text(code)
            }
            .foregroundColor(.black)
        }
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView(code: "")
    }
}
