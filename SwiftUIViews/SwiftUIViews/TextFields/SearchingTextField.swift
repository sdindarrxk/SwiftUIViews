//
//  SearchingTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct SearchingTextField: View {
    @Binding var text: String
    
    var body: some View {
        UnderlinedTextField(placeholder: "Searching..", text: $text, image: "magnifyingglass", isSuccess: .constant(false))
    }
}

#Preview {
    SearchingTextField(text: .constant(""))
}
