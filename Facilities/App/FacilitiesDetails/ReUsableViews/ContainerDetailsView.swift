//
//  ContainerDetailsView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import SwiftUI

struct ContainerDetailsView: View {
    var body: some View {
        Color(.systemBackground)
            .frame(minHeight: 200, maxHeight: .infinity)
            .cornerRadius(12)
            .padding(.horizontal)
            .shadow(radius: 10)
    }
}

struct ContainerDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
