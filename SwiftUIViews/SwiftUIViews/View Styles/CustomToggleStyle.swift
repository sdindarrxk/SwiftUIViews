//
//  CustomToggleStyle.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Rectangle()
                .frame(width: 50, height: 25)
                .foregroundColor(configuration.isOn ? .green.opacity(0.3) : .red.opacity(0.3))
                .overlay(
                    Circle()
                        .frame(width: 25, height: 25)
                        .foregroundColor(configuration.isOn ? .green : .red)
                        .offset(x: configuration.isOn ? 12.5 : -12.5)
                        .animation(.easeInOut, value: configuration.isOn)
                )
                .cornerRadius(12.5)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .padding()
    }
}

