//
//  OutlinedTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct OutlinedTextField: View, TextFieldDelegate, Imagable {
    var placeholder: String
    var text: Binding<String>
    var image: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let image = image {
                    Image(systemName: image)
                }
                TextField(placeholder, text: text)
            }
            .modifier(outlinedViewModifier(roundedCorners: 6, startColor: .teal, endColor: .mint, textColor: .white))
        }
        .padding()
    }
}

#Preview {
    OutlinedTextField(placeholder: "UserName", text: .constant(""), image: "person")
}
