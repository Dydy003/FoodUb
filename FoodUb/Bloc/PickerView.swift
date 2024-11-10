//
//  PickerView.swift
//  FoodUb
//
//  Created by Dylan Caetano on 10/11/2024.
//

import SwiftUI

struct PickerView: View {
    
    @Binding var selectionMeat: Int
    
    var meats: [String]
    
    var body: some View {
        Picker("Choisis ton Menus", selection: $selectionMeat) {
            ForEach(0..<meats.count, id: \.self) { meat in
                Text(meats[meat]).tag(meat)
            }
        }
        .pickerStyle(.palette)
    }
}

#Preview {
    PickerView(selectionMeat: .constant(0), meats: [])
}
