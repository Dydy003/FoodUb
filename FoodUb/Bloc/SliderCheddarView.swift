//
//  SliderCheddarView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct SliderCheddarView: View {
    
    @Binding var cheese: Double
    
    var body: some View {
        VStack {
            HStack {
                Image("Cheddar")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("\(Int(cheese))%")
            }
            Slider(value: $cheese, in: 0...100)
                .tint(Color.colorText)
        }
    }
}

#Preview {
    SliderCheddarView(cheese: .constant(50))
}
