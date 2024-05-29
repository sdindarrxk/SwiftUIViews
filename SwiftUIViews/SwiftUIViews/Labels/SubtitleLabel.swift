//
//  SubtitleLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct SubtitleLabel: View {
    var text: String
    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 18, weight: .semibold, action: action)
    }
}

#Preview {
    SubtitleLabel(text: "Sabri")
}
