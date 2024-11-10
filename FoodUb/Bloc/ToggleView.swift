//
//  ToggleView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 09/11/2024.
//

import SwiftUI

struct ToggleView: View {
    
    @Binding var isToggle: Bool
    
    var body: some View {
        Toggle(isToggle ? "Menu" : "Burger Simple", isOn: $isToggle)
    }
}

#Preview {
    ToggleView(isToggle: .constant(true))
}
