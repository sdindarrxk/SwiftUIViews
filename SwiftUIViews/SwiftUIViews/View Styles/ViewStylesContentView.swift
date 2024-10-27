//
//  ViewStylesContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct ViewStylesContentView: View {
    @State private var toggleOn = true
    @State private var progress: Double = 0.5
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Toggle("Custom Toggle", isOn: $toggleOn)
                .toggleStyle(CustomToggleStyle())

            Slider(value: $sliderValue)
                .customSliderStyle(trackColor: .green)
        }
        .padding()
    }
}

#Preview {
    ViewStylesContentView()
}
