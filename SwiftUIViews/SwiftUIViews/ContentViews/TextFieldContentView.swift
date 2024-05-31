//
//  TextFieldContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct TextFieldContentView: View {
    @State private var text = ""
    @State private var password = ""
    @State private var underlined = ""
    @State private var searching = ""
    @State private var oval = ""
    @State private var neumorphic = ""
    @State private var outlined = ""
    @State private var error = ""
    @State private var illuze = ""
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 15) {
                Text(illuze.isEmpty ? "Login İlluzasyonu": illuze).font(.title2)
                
                GangnamTextField(placeholder: "İlüzyon", text: $illuze)
                IllusionTextField(placeholder: "İlüzyon", text: $illuze)
                
                TitleLabel(text: "Underlined: \(underlined)")
                UnderlinedTextField(placeholder: "Hello, World!", text: $underlined, image: "person", color: .brown, editingColor: .yellow, isSuccess: .constant(true))
                
                TitleLabel(text: "Searching: \(searching)")
                SearchingTextField(text: $searching)
                
                TitleLabel(text: "Neumorphic: \(neumorphic)")
                NeumorphicStyleTextField(textField: TextField("Search...", text: $text), imageName: "magnifyingglass")
                
                TitleLabel(text: "Oval: \(oval)")
                OvalTextField(text: $oval)
                
                TitleLabel(text: "Outlined: \(outlined)")
                OutlinedTextField(placeholder: "Password", text: $outlined, image: "password")
            }.padding()
        }
    }
}


#Preview {
    TextFieldContentView()
}
