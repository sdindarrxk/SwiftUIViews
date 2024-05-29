//
//  TextContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct TextContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            CustomText("Hello, World!", color: .red, size: 50, weight: .bold) {
                print("hello")
            }
            HeaderLabel(text: "Hello, World!")
            TitleLabel(text: "Hello, World!")
            SubtitleLabel(text: "Hello, World!")
            BodyLabel(text: "Hello, World!")
            CaptionLabel(text: "Hello, World!")
            FooterLabel(text: "Hello, World!")
            
            IconLabel(text: "Info", icon: "info.circle", iconColor: .gray) {
                print("info tapped")
            }
            IconLabel(text: "Person", icon: "person")
            IconLabel(text: "Favorites", icon: "star", iconColor: .yellow)
            IconLabel(text: "Favorites")
            IconLabel(icon: "star")
        }
        .padding()
    }
}

#Preview {
    TextContentView()
}
