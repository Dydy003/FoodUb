//
//  MenuImageView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct MenuImageView: View {
    
    var name: String
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Image(name)
                .resizable()
                .frame(width: 50, height: 50)
            
            Spacer()
            
        }
    }
}

#Preview {
    MenuImageView(name: "Poisson")
}
