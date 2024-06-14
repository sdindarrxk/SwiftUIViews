//
//  CustomTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct CustomTextField: View {

    var placeholder: String
    @Binding var text: String
    var leftIcon: String?
    var rightIcon: String?
    var rightIconAction: (() -> Void)? = nil
    var color: Color = .black
    var editingColor: Color? = nil
    @State private var isEditing = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let leftIcon = leftIcon {
                    Image(systemName: leftIcon)
                }
                TextField(placeholder, text: $text)
                    .padding(.leading, leftIcon != nil ? 8 : 0)
                    .onTapGesture {
                        self.isEditing = true
                    }
                if let rightIcon = rightIcon {
                    Image(systemName: rightIcon)
                        .onTapGesture {
                            rightIconAction?()
                        }
                        .padding(.leading, 8)
                }
            }
            .font(.title3)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(isEditing ? (editingColor ?? color) : color, lineWidth: 1)
            )
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(placeholder: "Placeholder", text: .constant(""), leftIcon: "person", rightIcon: "eye").padding()
    }
}
