//
//  ButterflyTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct ButterflyTextField: View, TextFieldDelegate {
    var placeholder: String
    var text: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField(placeholder, text: text)
                    .butterflyTextFieldStyle(startColor: .blue, endColor: .green, trailingShadowColor: .red, leadingShadowColor: .yellow, centerShadowColor: .gray)
            }
        }.padding()
    }
}

#Preview {
    ButterflyTextField(placeholder: "battır çikkin", text: .constant(""))
}
