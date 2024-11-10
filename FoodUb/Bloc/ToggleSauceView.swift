//
//  ToggleSauceView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct ToggleSauceView: View {
    
    @Binding var sauce: Bool
    
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 30, height: 30)
            
            Toggle(image, isOn: $sauce)
                .tint(image == "ketchup" ? .red : .yellow)
        }
        .padding(8)
        .background(Color.colorText)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    ToggleSauceView(sauce: .constant(true), image: "ketchup")
}
