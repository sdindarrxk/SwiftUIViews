//
//  GaugeContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 28.10.2024.
//

import SwiftUI

struct GaugeContentView: View {
    
    @State private var progress: Double = 0

    var body: some View {
        VStack {
            Gauge(value: progress) {
                Text("\(Int(progress * 100), format: .percent)")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.indigo)
            Slider(value: $progress, in: 0...1)
                .padding()
                .labelStyle(.titleAndIcon)
        }
        .padding()
    }
}


#Preview {
    GaugeContentView()
}
