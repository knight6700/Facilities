//
//  LoadingView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 30/07/2021.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    
    func makeCoordinator() -> () {
        
    }
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .titleColor
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
}
struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ActivityIndicator()
        }
    }
}
