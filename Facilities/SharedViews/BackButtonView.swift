//
//  BackButtonView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        Button {
            
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image("back")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)

        }

    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
