//
//  CustomWheelPicker.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomWheelPicker<T>: View where T: Hashable {
    let items: [T]
    @Binding var selection: T

    var body: some View {
        Picker("", selection: $selection) {
            ForEach(items, id: \.self) { item in
                Text("\(item)")
                    .font(.headline)
            }
        }
        .pickerStyle(WheelPickerStyle())
        .clipped()
    }
}

struct WheelContentView: View {
    // MARK: - Properties
    @State private var selectedSize = "normal"
    @State private var selectedScore = 100

    let sizes = ["small", "normal", "medium", "large"]
    let scores = [100, 150, 200, 300]

    var body: some View {
        CustomWheelPicker(items: sizes, selection: $selectedSize)
            .padding()
        Text("Seçilmiş Değer: \(selectedSize)")

        CustomWheelPicker(items: scores, selection: $selectedScore)
            .padding()

        Text("Seçilmiş Değer: \(selectedScore)")
    }
}

#Preview {
    WheelContentView()
}
