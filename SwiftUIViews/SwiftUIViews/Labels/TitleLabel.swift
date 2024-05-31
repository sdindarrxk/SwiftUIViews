//
//  TitleLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct TitleLabel: View, VoidActionable {
    var action: (() -> Void)?
    
    var text: String
//    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 24, weight: .bold, action: action)
    }
}

#Preview {
    TitleLabel(text: "Hello, World")
}
