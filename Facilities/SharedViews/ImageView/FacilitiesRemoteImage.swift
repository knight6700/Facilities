//
//  FacilitiesRemoteImage.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import SwiftUI

struct FacilitiesRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urString: String
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear{
                imageLoader.loadImage(loadFromUrlString: urString)
            }
    }
}

struct FacilitiesRemoteImage_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesRemoteImage( urString: "")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
