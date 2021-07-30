//
//  FeesView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct FeesView: View {
    var code: String
    @State var dynamicHeight: CGFloat
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "fees", text: "Fees")
            VStack (alignment: .leading) {
                Webview(dynamicHeight: $dynamicHeight, codeString: code)
                    .frame(height: dynamicHeight)
            }
            .foregroundColor(.black)
        }
    }
}

struct FeesView_Previews: PreviewProvider {
    static var previews: some View {
        FeesView(code: "", dynamicHeight: 100)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
