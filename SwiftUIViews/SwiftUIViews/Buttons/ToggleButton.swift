//
//  ToggleButton.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct ToggleButton: View {
    @State private var isOn: Bool = false

    var body: some View {
        Button(action: {
            isOn.toggle()
        }) {
            Text(isOn ? "Açık" : "Kapalı")
                .font(.headline)
                .padding()
                .background(isOn ? Color.green : Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

