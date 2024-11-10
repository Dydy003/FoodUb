//
//  StepperView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct StepperView: View {
    
    @Binding var value: Int
    
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 30, height: 30)
            
            Stepper("Quantité: \(value)", value: $value, in: 0...5)
        }
        .padding(8)
        .background(Color.colorText)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    StepperView(value: .constant(0), image: "cornichon")
}
