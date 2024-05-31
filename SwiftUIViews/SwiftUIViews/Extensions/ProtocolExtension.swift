//
//  ProtocolExtension.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

protocol Imagable {
    var image: String? { get }
}

protocol TextFieldDelegate {
    var placeholder: String { get }
    var text: Binding<String> { get }
}

protocol VoidActionable {
    var action: (() -> Void)? { get }
}

// TODO: - tekrar bak
//extension Imagable {
//    var image: String? { nil }
//}
//
//extension TextFieldDelegate {
//    var text: Binding<String> { fatalError("Must be implemented by conforming types") }
//    var placeholder: String { fatalError("Must be implemented by conforming types") }
//}
//
//extension VoidActionable {
//    var action: (() -> Void)? { nil }
//}
