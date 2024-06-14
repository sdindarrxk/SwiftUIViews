//
//  IconLabel.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.05.2024.
//

import SwiftUI

struct IconLabel: View {
    enum LabelType {
        case labelOnly
        case iconOnly
        case both
    }
    
    let text: String?
    @State private var icon: String
    let originalIcon: String
    let labelType: LabelType
    var action: (() -> Void)?
    var iconColor: Color
    
    init(text: String? = nil, icon: String = "", iconColor: Color = .blue, action: (() -> Void)? = nil) {
        self.text = text
        self._icon = State(initialValue: icon)
        self.originalIcon = icon
        self.iconColor = iconColor
        self.action = action
        
        if let text, !icon.isEmpty {
            self.labelType = .both
        } else if text != nil {
            self.labelType = .labelOnly
        } else {
            self.labelType = .iconOnly
        }
    }
    
    var body: some View {
        Group {
            if let action = action {
                Button(action: {
                    action()
                    toggleIcon()
                }) {
                    labelContent
                }
                .buttonStyle(PlainButtonStyle())
            } else {
                labelContent
                    .onTapGesture {
                        toggleIcon()
                    }
            }
        }
    }
    
    @ViewBuilder
    private var labelContent: some View {
        HStack(spacing: 10) {
            if labelType == .iconOnly || labelType == .both {
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                    .font(.largeTitle)
            }
            if labelType == .labelOnly || labelType == .both {
                if let text = text {
                    Text(text)
                        .font(.title)
                        .foregroundColor(.primary)
                }
            }
        }
    }
    
    private func toggleIcon() {
        if icon == originalIcon {
            icon = "\(originalIcon).fill"
        } else {
            icon = originalIcon
        }
    }
}
#Preview {
    IconLabel(text: "Password", icon: "lock") {
        print("person tapped")
    }
}
