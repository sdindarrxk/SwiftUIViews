//
//  CaptionLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct CaptionLabel: View {
    var text: String
    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 14, weight: .regular, action: action)
    }
}

#Preview {
    CaptionLabel(text: "Hello, World!")
}
