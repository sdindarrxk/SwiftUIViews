//
//  UserProfileImage.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct UserProfileImage: View {

    @Binding var imageName: String

    init(imageName: Binding<String>) {
        self._imageName = imageName
    }

    var body: some View {
        GeometryReader { geometry in
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .foregroundColor(.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 5)
        }
        .frame(width: 50, height: 50)
    }
}
