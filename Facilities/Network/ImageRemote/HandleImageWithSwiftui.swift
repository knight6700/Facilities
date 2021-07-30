//
//  HandleImageWithSwiftui.swift
//  Facilities
//
//  Created by Mahmoud Fares on 29/07/2021.
//

import SwiftUI
/// user ObservableObject ImageLoader to support before ios 15 but if ios 15 can user AsyncImage
final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func loadImage(loadFromUrlString urlString: String ) {
        ImageNetworkManager.shared.downloadImage(fromURLString: urlString) { [weak self] uiImage in
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async { [weak self] in
                self?.image = Image(uiImage: uiImage)
            }
        }
    }
}

