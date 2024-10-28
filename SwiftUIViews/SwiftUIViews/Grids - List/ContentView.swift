//
//  GridContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct GridContentView: View {
    let products = [
        Product(name: "Elma", price: 1.50, description: "Taze ve lezzetli elmalar.", imageName: "apple"),
        Product(name: "Muz", price: 0.99, description: "Besleyici muzlar.", imageName: "banana"),
        Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
        Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange"),
        Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
        Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange"),
        Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
        Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange")
    ]

    var body: some View {
        CustomGridView(items: products, isVertical: true, isFlexible: false, count: 2) { product in
            ProductCardView(product: product) {
                print("\(product.name) sepete eklendi.")
            }
        }
    }
}

#Preview {
    GridContentView()
}
