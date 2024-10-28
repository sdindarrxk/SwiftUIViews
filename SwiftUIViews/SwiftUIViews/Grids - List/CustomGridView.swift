//
//  CustomGridView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI


struct CustomGridView<Item: Identifiable, Content: View>: View {
    let items: [Item]
    let rowCount: Int
    let spacing: CGFloat
    let content: (Item) -> Content

    init(
        items: [Item],
        rowCount: Int = 2,
        spacing: CGFloat = 10,
        @ViewBuilder content: @escaping (Item) -> Content
    ) {
        self.items = items
        self.rowCount = rowCount
        self.spacing = spacing
        self.content = content
    }

    var body: some View {
        let columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 150), spacing: spacing), count: rowCount)

        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(items) { item in
                    content(item)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .shadow(radius: 2)
                }
            }
            .padding()
        }
    }
}
