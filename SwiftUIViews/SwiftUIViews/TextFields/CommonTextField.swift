//
//  ErrorTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

// adını değiştirmek lazım errorable olsun..
struct 
d: View {
    var placeholder: String
    @Binding var text: String
    var image: String?
    var defaultColor: Color = .black
    var editingColor: Color? = nil
    var successColor: Color = .green
    var errorColor: Color = .red
    var errorMessage: String = "Error"
    var validation: (String) -> Bool
    
    @State private var imageName: String?
    @State private var isEditing = false
    @State private var isError = false
    
    var body: some View {
        VStack(alignment: .leading) {
            UnderlinedTextField(
                placeholder: placeholder,
                text: $text,
                image: image,
                color: defaultColor,
                editingColor: isEditing ? (isError ? errorColor : successColor) : defaultColor
            )
            .onChange(of: text) { newValue in
                isError = !validation(newValue)
//                imageName = isError ? (image != nil ? image! + ".fill" : nil) : image
            }
            
            if isError {
                CustomText(errorMessage, color: errorColor, size: 10)
                    .padding(.leading, 20)
            } else if !text.isEmpty {
                CustomText("")
            }
        }
    }
}

//#Preview {
//    ErrorTextField(text: .constant(""), isError: true)
//}
