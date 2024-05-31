//
//  CommonTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

// TODO: - validationlara tekrar bak.. issuccess, iserror durumlarında renk karmaşası oluyor
struct CommonTextField: View {
    var placeholder: String
    @Binding var text: String
    var image: String?
    var defaultColor: Color = .red
    var editingColor: Color? = .black
    var successColor: Color? = .green
    var errorColor: Color? = .red
    var errorMessage: String = "Error"
    var validation: ValidationDelegate
    
    @State private var imageName: String?
    @State private var isEditing = false
    @State private var isError = false
    @State private var isSuccess = false
    @State private var messages: [String] = []
    @State private var isShowingErrors = false
    
    var body: some View {
        VStack(alignment: .leading) {
            UnderlinedTextField(
                placeholder: placeholder,
                text: $text,
                image: isError || isSuccess ? image?.appending(".fill") : image,
                color: (isError ? errorColor : (isSuccess ? successColor : defaultColor)) ?? .black,
                editingColor: editingColor,
                isSuccess: $isSuccess
            )
            .onChange(of: text) { newValue in
                
                let validationResult = validation.validate(newValue)
                isSuccess = validationResult.isValid
                isError = !validationResult.isValid
                messages = validationResult.messages
            }
            if isError {
                ForEach(messages, id: \.self) { message in
                    CustomText(errorMessage, color: errorColor ?? .red, size: 10)
                        .padding(.leading, 20)
                }
            }
        }
        .onTapGesture {
            isEditing = true
        }
    }
}
