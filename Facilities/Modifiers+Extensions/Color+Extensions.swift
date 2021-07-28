//
//  Color+Extensions.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI
extension Color {
    static var primaryColor: Color = Color("primaryColor")
    static var backgroundColor: Color = Color("backgroundColor")
    static var titleColor: Color = Color("titleColor")
}

extension UIColor {
    static var primaryColor = UIColor(named: "primaryColor") ?? UIColor()
    static var backgroundColor: UIColor = UIColor(named:"backgroundColor") ?? UIColor()
    static var titleColor: UIColor = UIColor(named: "titleColor") ?? UIColor()


}
