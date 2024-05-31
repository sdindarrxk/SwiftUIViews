//
//  BasicLoginView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct BasicLoginView: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var name = ""
    @State private var email = ""
    @State private var age = ""

    var body: some View {
        VStack(spacing: 25) {
        TitleLabel(text: "Basic Login")
            CommonTextField(
                placeholder: "Enter email",
                text: $email,
                image: "mail",
                defaultColor: .blue,
                editingColor: .orange,
                errorMessage: "Error: Invalid input",
                validation: EmailValidation()
            )
            
            CommonTextField(
                placeholder: "Enter password...",
                text: $password,
                image: "lock",
                errorMessage: "Password must be 6-15 characters, with at least one uppercase letter and one digit",
                validation: PasswordValidation()
            )
            
            CommonTextField(
                placeholder: "Confirm password...",
                text: $confirmPassword,
                image: "lock",
                defaultColor: .black,
                errorMessage: "Passwords do not match",
                validation: ConfirmPasswordValidation(password: password)
            )
        }
        .padding()
    }
}

#Preview {
    BasicLoginView()
}
