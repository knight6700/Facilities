//
//  NavigationView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 30/07/2021.
//

import SwiftUI

struct CustomNavigationModifiers: ViewModifier {
       
    func body(content: Content) -> some View {
        content
            .background(Color.backgroundColor)
            .listStyle(PlainListStyle())
            .navigationTitle("Facilities")
            .navigationBarTitleDisplayMode(.inline)
            .navigationAppearance(backgroundColor: .primaryColor, foregroundColor: .systemBackground, tintColor: .white, hideSeparator: false)

    }
}

