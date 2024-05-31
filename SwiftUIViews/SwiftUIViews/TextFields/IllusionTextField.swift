//
//  IllusionTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct IllusionTextField: View, TextFieldDelegate {
    var placeholder: String
    var text: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField(placeholder, text: text)
                    .illusionTextField(roundedCorners: 6, shadowColor: .gray, startColor: .white, endColor: .red)
            }
        }.padding()
    }
}

#Preview {
    IllusionTextField(placeholder: "İllüze etmek için doğru yerdesiniz...", text: .constant(""))
}
