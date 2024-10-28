//
//  Product.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let description: String
    let imageName: String
}

let products = [
    Product(name: "Elma", price: 1.50, description: "Taze ve lezzetli elmalar.", imageName: "apple"),
    Product(name: "Muz", price: 0.99, description: "Besleyici muzlar.", imageName: "banana"),
    Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
    Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange"),
    Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
    Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange"),
    Product(name: "Çilek", price: 3.00, description: "Özellikle yaz aylarında harika.", imageName: "strawberry"),
    Product(name: "Portakal", price: 1.20, description: "Zengin C vitamini.", imageName: "orange"),
]

