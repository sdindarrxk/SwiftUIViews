//
//  BodyLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI
struct BodyLabel: View {
    var text: String
    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 16, weight: .regular, action: action)
    }
}

#Preview {
    BodyLabel(text: "Hello, World!")
}
