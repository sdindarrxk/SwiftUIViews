//
//  NeumorphicStyleTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct NeumorphicStyleTextField: View {
    var textField: TextField<Text>
    var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.darkShadow)
            textField
        }
        .padding()
        .foregroundColor(.neumorphictextColor)
        .background(Color.background)
        .cornerRadius(6)
        .shadow(color: Color.darkShadow, radius: 3, x: 2, y: 2)
        .shadow(color: Color.lightShadow, radius: 3, x: -2, y: -2)
    }
}

#Preview {
    NeumorphicStyleTextField(textField: TextField("Search...", text: .constant("")), imageName: "magnifyingglass")
}
