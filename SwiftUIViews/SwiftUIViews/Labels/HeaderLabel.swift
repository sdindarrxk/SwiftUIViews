//
//  HeaderLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct HeaderLabel: View {
    var text: String
    var action: (() -> Void)?
    
    var body: some View {
        CustomText(text, size: 28, weight: .bold, action: action)
    }
}

#Preview {
    HeaderLabel(text:"Hello, World!")
}
