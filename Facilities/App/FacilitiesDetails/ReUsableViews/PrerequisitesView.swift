//
//  PrerequisitesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct PrerequisitesView: View {
    var code: String
    @State  var dynamicHeight: CGFloat
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "prerequisites", text: "Prerequisites")
            VStack (alignment: .leading) {
                Webview(dynamicHeight: $dynamicHeight, codeString: code)
                    .frame(height: dynamicHeight)

            }
            .foregroundColor(.black)
        }
    }
    
}

struct PrerequisitesView_Previews: PreviewProvider {
    static var previews: some View {
        PrerequisitesView(code: "sss", dynamicHeight: 100)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
