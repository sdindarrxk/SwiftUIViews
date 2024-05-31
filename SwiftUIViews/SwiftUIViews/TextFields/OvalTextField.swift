//
//  OvalTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct OvalTextField: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
        }
        .textFieldStyle(OvalTextFieldStyle())
    }
}

#Preview {
    OvalTextField(text: .constant(""))
}
