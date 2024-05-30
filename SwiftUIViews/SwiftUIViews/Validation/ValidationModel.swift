//
//  ValidationRule.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct ValidationRule {
    let message: String
    let validation: (String) -> Bool
}
