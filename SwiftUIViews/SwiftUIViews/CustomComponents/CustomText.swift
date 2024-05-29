//
//  CustomText.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct CustomText: View {
    var text: String
    var color: Color
    var size: CGFloat
    var weight: Font.Weight
    var font: Font?
    var action: (() -> Void)?
    
    init(_ text: String, color: Color = .primary, size: CGFloat = 16, weight: Font.Weight = .regular, font: Font? = nil, action: (() -> Void)? = nil) {
        self.text = text
        self.color = color
        self.size = size
        self.weight = weight
        self.font = font
        self.action = action
    }
    
    var body: some View {
        Text(text)
            .font(font ?? .system(size: size, weight: weight))
            .foregroundColor(color)
            .onTapGesture {
                action?()
            }
    }
}

#Preview {
    CustomText("Hello, World!", color: .red, size: 30, weight: .heavy) {
        print("hello")
    }
}

