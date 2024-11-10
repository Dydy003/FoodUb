//
//  ToggleFriesView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct ToggleFriesView: View {
    
    @Binding var isBig: Bool
    
    var body: some View {
        HStack {
            Image("fries")
                .resizable()
                .frame(width: 30, height: 30)
            
            Toggle(isBig ? "Grande": "Petite", isOn: $isBig)
        }
        .padding(8)
        .background(Color.colorText)
        .clipShape(.buttonBorder)
    }
}
