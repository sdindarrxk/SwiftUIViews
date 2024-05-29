//
//  FooterLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct FooterLabel: View {
    var text: String
    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 12, weight: .regular, action: action)
    }
}

#Preview {
    FooterLabel(text: "Hello, World!")
}
