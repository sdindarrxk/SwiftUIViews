//
//  UnderlinedTextField.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct UnderlinedTextField: View {
    var placeholder: String
    var text: Binding<String>
    @State var image: String?
    var originalImage: String?
    var color: Color = .black
    var editingColor: Color? = nil
    @State private var isEditing = false
    @Binding var isSuccess: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let image = image {
                    Image(systemName: image)
                }
                TextField(placeholder, text: text)
                    .padding(.leading, 8)
                    .onTapGesture {
                        self.isEditing = true
                    }
            }
            .onChange(of: text.wrappedValue) { newValue in
                if let image = image, !image.hasSuffix(".fill") {
                    self.image = image + ".fill"
                }
            }
            .font(.title3)
            .underlinedTextField(color: isEditing ? (isSuccess ? .green : (editingColor ?? .red)) : color)
        }
    }
}

#Preview {
    UnderlinedTextField(placeholder: "Hello, World!", text: .constant(""), image: "star", color: .blue, editingColor: .red, isSuccess: .constant(true))
}
