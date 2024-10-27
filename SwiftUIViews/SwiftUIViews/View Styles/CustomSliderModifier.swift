//
//  CustomSliderModifier.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomSliderModifier: ViewModifier {
    var trackColor: Color

    func body(content: Content) -> some View {
        content
            .accentColor(trackColor)
    }
}

extension View {
    func customSliderStyle(trackColor: Color) -> some View {
        self.modifier(CustomSliderModifier(trackColor: trackColor))
    }
}
