//
//  CustomButton.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var backgroundColor: Color = .accentColor
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 10
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}
