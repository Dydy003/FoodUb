//
//  Color.swift
//  FoodUb
//
//  Created by Dylan Caetano on 09/11/2024.
//

import Foundation
import SwiftUI

extension Color {
    static var color1 = Color("ColorA")
    static var color2 = Color("ColorB")
    static var colorText = Color("ColorT")
    static var color4 = Color("ColorTo")
    static var gradient = LinearGradient(colors: [Color(color1), Color(color2)], startPoint: .bottomLeading, endPoint: .topTrailing)
}
