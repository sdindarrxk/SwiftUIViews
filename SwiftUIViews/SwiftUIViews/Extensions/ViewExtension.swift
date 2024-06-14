//
//  ViewExtension.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

// MARK: - TextField
extension View {
    //   --------------------
    //      ---------- şekilde yapabllirm aşağısını
    func underlinedTextField(color: Color = .orange, editingColor: Color? = .pink) -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 0.5).padding(.init(top: 0, leading: 15, bottom: 45, trailing: 15))
                .overlay(Rectangle().frame(height: 3).padding(.top, 40))
                .overlay(Rectangle().frame(height: 2).padding([.leading, .trailing, .top], 60)))

            .foregroundColor(color)
            .tint(color)
            .padding(25)
    }
    
    func illusionTextField(roundedCorners: CGFloat = UIScreen.main.bounds.height / 2, shadowColor: Color, startColor: Color, endColor: Color) -> some View {
        self
            .padding()
            .foregroundColor(endColor)
            .tint(endColor)
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .cornerRadius(roundedCorners)
            .shadow(color: shadowColor, radius: 10)
    }
    
    func gangnamTextFieldStyle(roundedCorners: CGFloat = UIScreen.main.bounds.height / 2, startColor: Color, endColor: Color, shadowColor: Color) -> some View {
        self
            .padding()
            .tint(endColor)
            .foregroundColor(endColor)
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor, startColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCorners)
            .shadow(color: shadowColor, radius: 2)
    }
    
    func butterflyTextFieldStyle(roundedCorners: CGFloat = UIScreen.main.bounds.height / 2, startColor: Color, endColor: Color, trailingShadowColor: Color, leadingShadowColor: Color, centerShadowColor: Color) -> some View {
        self
            .padding()
            .tint(centerShadowColor)
            .foregroundColor(centerShadowColor)
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCorners)
            .shadow(color: trailingShadowColor, radius: 5, x: 2, y: 2)
            .shadow(color: leadingShadowColor, radius: 5, x: -2, y: -2)
            .shadow(color: centerShadowColor, radius: 1)
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [.indigo, .cyan]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 5)
    }
}

struct outlinedViewModifier: ViewModifier {
    var roundedCorners: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .cornerRadius(roundedCorners)
            .padding(3)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCorners)
                .stroke(LinearGradient(gradient: Gradient(colors: [endColor, startColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
            .font(.custom("Open Sans", size: 18))
            .shadow(radius: 10)
    }
}
