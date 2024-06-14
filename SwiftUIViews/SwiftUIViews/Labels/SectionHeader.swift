//
//  SectionHeader.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 14.06.2024.
//

import SwiftUI

struct SectionHeader: View {
    var title: String
    
    var body: some View {
        Section {
            Text(title)
                .foregroundStyle(.primary)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }
    }
}

#Preview {
    SectionHeader(title: "Foods")
}
