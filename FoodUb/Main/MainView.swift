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
    @State private var isSelectedDrink: Int = 0
    @State private var bacon: Int = 0
    @State private var cornichons: Int = 0
    @State private var ketchup = false
    @State private var mayo = false
    @State private var fries = false
    @State private var text = ""
    @State private var number = ""
    @State private var date = Date()
    @State private var cheese: Double = 50
    
    @FocusState var focus
    
    private var myMenus: [String] = ["Boeuf", "Nuggets", "Poisson", "Veggie"]
    private var drink = ["cocacola", "fanta", "pepsi"]
    
    var body: some View {
        ZStack {
            Color.gradient.ignoresSafeArea()
               
               Form {
                   Section("Composez votre Commande :") {
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
                       
                       StepperView(value: $bacon, image: "bacon")
                       StepperView(value: $cornichons, image: "cornichon")
                       
                      
                       ToggleSauceView(sauce: $ketchup, image: "ketchup")
                       ToggleSauceView(sauce: $mayo, image: "mayonnaise")
                       
                       SliderCheddarView(cheese: $cheese)
                   }
                   .listRowBackground(Color.color4.opacity(0.1))
                   
                   if isToggleMenu {
                       Section("Pour le menu :") {
                           MenuImageView(name: drink[isSelectedDrink])
                           
                           Menu {
                               PickerView(selectionMeat: $isSelectedDrink, meats:  drink)
                           } label: {
                               Text(drink[isSelectedDrink])
                                   .foregroundStyle(.black)
                                   .bold()
                                   .padding()
                                   .frame(maxWidth: .infinity)
                                   .background(Color.colorText)
                                   .clipShape(.buttonBorder)
                           }
                           
                           ToggleFriesView(isBig: $fries)

                       }
                       .listRowBackground(Color.color4.opacity(0.1))
                   }
                   Section("Information :") {
                       TextField("Nom de la commande", text: $text)
                       
                       HStack {
                           TextField("Numéro", text: $number)
                               .focused($focus)
                           #if os(iOS)
                               .keyboardType(.phonePad)
                           #endif
                           
                           Button {
                               focus = false
                           } label: {
                               Text("OK")
                                   .foregroundStyle(Color.color4)
                           }
                       }
                       
                       DatePicker("Heure", selection: $date, displayedComponents: .hourAndMinute)
                   }
                   .listRowBackground(Color.gradient.opacity(0.5))
                   .shadow(radius: 5)
               }
               .scrollContentBackground(.hidden)
           }
    }
}

#Preview {
    MainView()
}
