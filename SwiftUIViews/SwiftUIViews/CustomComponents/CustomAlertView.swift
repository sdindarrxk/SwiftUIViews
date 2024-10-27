//
//  CustomAlertView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomAlertView: View {
    @Binding var isPresented: Bool
    var title: String
    var message: String
    var primaryButtonText: String
    var secondaryButtonText: String?
    var primaryAction: () -> Void
    var secondaryAction: (() -> Void)?

    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.headline)
                .padding(.horizontal)
            Text(message)
                .font(.subheadline)
                .padding(.horizontal)
                .padding(.bottom)
                .multilineTextAlignment(.center)

            if let secondaryButtonText = secondaryButtonText {
                HStack(spacing: 50) {
                    Button(secondaryButtonText) {
                        secondaryAction?()
                        isPresented = false
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)

                    Button(primaryButtonText) {
                        primaryAction()
                        isPresented = false
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            } else {
                Button(primaryButtonText) {
                    primaryAction()
                    isPresented = false
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 20)
        .padding()
    }
}

#Preview {
    VStack {
        CustomAlertView(
            isPresented: .constant(true),
            title: "Important Message",
            message: "This is a custom alert message.",
            primaryButtonText: "OK",
            primaryAction: {
                print("OK pressed")
            }
        )
    }
    CustomAlertView(
        isPresented: .constant(true),
        title: "Important Message",
        message: "This is a custom alert message.",
        primaryButtonText: "OK",
        secondaryButtonText: "CANCEL",
        primaryAction: {
            print("OK pressed")
        }
    ) {
        print("CANCEL pressed")
    }
}
