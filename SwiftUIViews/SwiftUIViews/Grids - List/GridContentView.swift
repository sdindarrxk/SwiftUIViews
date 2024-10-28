//
//  GridContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct GridContentView: View {
    
    var body: some View {
        CustomGridView(items: products) { product in
            ProductCardView(product: product) {
                print("Added to cart")
            }
        }
    }
}

#Preview {
    GridContentView()
}
