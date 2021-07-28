//
//  NavigationModifiers.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI
struct NavAppearanceModifier: ViewModifier {
    init(backgroundColor: UIColor, foregroundColor: UIColor, tintColor: UIColor?, hideSeparator: Bool) {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.titleTextAttributes = [.foregroundColor: foregroundColor]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor]
        navBarAppearance.backgroundColor = backgroundColor
        
        if hideSeparator {
            navBarAppearance.shadowColor = .clear
            navBarAppearance.backgroundImage = UIImage()
        }
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance

        if let tintColor = tintColor {
            UINavigationBar.appearance().tintColor = tintColor
        }
        let yourBackImage = UIImage(named: "back_button_image")
        UINavigationBar.appearance().backIndicatorImage = yourBackImage
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = yourBackImage
        UINavigationBar.appearance().backItem?.title = "Custom"

    }
    
    func body(content: Content) -> some View {
        content
    }
}

