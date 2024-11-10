//
//  MainView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 09/11/2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var isToggleMenu: Bool = true
    @State private var isSelected: Int = 0
    
    private var myMenus: [String] = ["Boeuf", "Nuggets", "Poisson", "Veggie"]
    
    var body: some View {
        ZStack {
            Color.gradient.ignoresSafeArea()
               
               Form {
                   Section("Composez votre Commande") {
                       ToggleView(isToggle: $isToggleMenu)
                           .tint(Color.colorText)
                       
                       MenuImageView(name: myMenus[isSelected])
                       
                       Menu {
                           PickerView(selectionMeat: $isSelected, meats: myMenus)
                       } label: {
                           Text(myMenus[isSelected])
                               .foregroundStyle(.black)
                               .bold()
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.colorText)
                               .clipShape(.buttonBorder)
                       }
                   }
                   .listRowBackground(Color.color4.opacity(0.1))
               }
               .scrollContentBackground(.hidden)
           }
    }
}

#Preview {
    MainView()
}
