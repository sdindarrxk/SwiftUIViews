//
//  ProductCardView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    let onAddToCart: () -> Void

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading) {
                Image(systemName: "arrow.left.circle")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                HStack (alignment: .firstTextBaseline) {
                    Text(product.name)
                        .font(.title)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .padding(.top, 8)
                    Spacer()
                    Text(String(format: "$%.2f", product.price))
                        .font(.headline)
                        .foregroundColor(.indigo)
                }
                Text(product.description)
                    .font(.title2)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.7)
                    .padding(.top, 4)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)

            Button(action: onAddToCart) {
                Image(systemName: "cart")
                    .font(.headline)
                    .padding(10)
                    .background(Color.indigo.opacity(0.1))
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .tint(.indigo)
            }
            .padding(10)
        }
    }
}

#Preview {
    ProductCardView(product: .init(name: "Product Name", price: 100, description: "Product Description", imageName: "image"), onAddToCart: {})
}
