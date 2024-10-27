//
//  LargeHomepageImage.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct LargeHomepageImage: View {
    @Binding var imageName: String

    init(imageName: Binding<String>) {
        self._imageName = imageName
    }

    var body: some View {
        GeometryReader { geometry in
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .frame(maxHeight: 300)
    }
}
