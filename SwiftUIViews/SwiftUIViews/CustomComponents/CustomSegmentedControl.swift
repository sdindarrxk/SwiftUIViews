//
//  CustomSegmentedControl.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomSegmentedControl: View {
    let items: [String]
    @Binding var selectedIndex: Int

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(items.indices, id: \.self) { index in
                    Button(action: {
                        withAnimation {
                            selectedIndex = index
                        }
                    }) {
                        Text(items[index])
                            .padding()
                            .foregroundColor(selectedIndex == index ? .indigo : .indigo.opacity(0.5))
                            .overlay(content: {
                                selectedIndex == index
                                    ? Rectangle()
                                        .fill(Color.indigo)
                                        .frame(width: 40, height: 2)
                                        .padding(.top, 30) : nil
                            })
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    // MARK: - Properties
    @State private var selectedIndex = 0
    let categories = ["Shoes", "Coats", "Pants", "T-Shirts", "Underwears"]

    var body: some View {
        CustomSegmentedControl(items: categories, selectedIndex: $selectedIndex)
            .padding()
    }
}

#Preview {
    ContentView()
}
