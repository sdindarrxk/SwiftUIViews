//
//  PasswordTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI


// TODO: - "eye" tıklandığında texti sıfırlıyor.. 
struct PasswordTextField: View {
    @Binding var password: String
    @State private var isSecure = true
    
    var body: some View {
        HStack {
            Image(systemName: "lock")
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .font(.title)
            
            if isSecure {
                SecureField("Password", text: $password)
                    .padding(.leading, 8)
            } else {
                TextField("Password", text: $password)
                    .padding(.leading, 8)
            }
            
            
            // Right Icon: Eye
            Button(action: {
                self.isSecure.toggle()
            }) {
                Image(systemName: isSecure ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 3)
    }
}
#Preview {
    PasswordTextField(password: .constant(""))
}
