//
//  GangnamTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct GangnamTextField: View, TextFieldDelegate {
    var placeholder: String
    var text: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField(placeholder, text: text)
                    .gangnamTextFieldStyle(startColor: .white, endColor: .red, shadowColor: .gray)
            }
        }.padding()
    }
}

#Preview {
    GangnamTextField(placeholder: "Kankam Sıtayl", text: .constant(""))
}
