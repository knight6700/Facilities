//
//  RequirmentDucomentsView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct RequireDocumentsView: View {


    var code: String
    @State var dynamicHeight: CGFloat
    var body: some View {
        VStack (alignment: .leading) {
            ImageLabelView(imageName: "requireddoc", text: "Required Documents")
            VStack (alignment: .leading) {
                Webview(dynamicHeight: $dynamicHeight, codeString: code)
                    .frame(height: dynamicHeight)
            }
            .frame(height: 150)
            .foregroundColor(.black)
        }
    }
}

struct RequireDocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        RequireDocumentsView(code: "National ID", dynamicHeight: 123)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
