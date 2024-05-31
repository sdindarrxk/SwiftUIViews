//
//  ValidationDelegate.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import Foundation
import SwiftUI

protocol ValidationDelegate {
    var rules: [ValidationModel] { get }
    func validate(_ input: String) -> (isValid: Bool, messages: [String])
}

extension ValidationDelegate {
    func validate(_ input: String) -> (isValid: Bool, messages: [String]) {
        var messages: [String] = []
        var isValid = true
        
        for rule in rules {
            if !rule.validation(input) {
                isValid = false
                if !messages.contains(rule.message) {
                    messages.append(rule.message)
                }
            }
        }

        return (isValid, messages)
    }
}
