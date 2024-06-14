//
//  CloseButton.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CloseButton: View {
    @Environment(\.dismiss) var dismiss
    @State var tapped = false

    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.15)) {
                tapped = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation(.easeInOut(duration: 0.15)) {
                    tapped = false
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    dismiss()
                }
            }
        } label: {
            Image(systemName: "xmark")
                .font(.title)
                .bold(tapped)
                .foregroundColor(.red)
        }
    }
}
