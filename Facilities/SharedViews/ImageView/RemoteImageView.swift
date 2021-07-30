//
//  RemoteImageView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import SwiftUI

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        // TODO: add specific image for placeholder banner
        if image == nil {
            LoadingView()
        }else {
            image?.resizable()
        }
          // added this image because i don't have placeholder image
        
    }
}


