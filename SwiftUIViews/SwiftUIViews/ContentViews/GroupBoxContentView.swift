//
//  GroupBoxContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 28.10.2024.
//

import SwiftUI

struct GroupBoxContentView: View {

    @State private var notificationIsOn: Bool = true
    @State private var cameraIsOn: Bool = false
    @State private var sliderValue: Double = 0.5

    var body: some View {
        VStack {
            PersonBox(name: "Sabri Dindar", email: "sabridindar@gmail.com", tel: "(555) 123 4567")
        }
        .padding()

        VStack {
            GroupBox(label: Text("Settings")) {
                Toggle("Enable Notifications", isOn: $notificationIsOn)
                Toggle("Enable Camera", isOn: $cameraIsOn)
                Slider(value: $sliderValue)
                Text("Sound Level: \(Int(sliderValue * 100))%")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }

            .background(Color(.systemGray6))
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    GroupBoxContentView()
}

struct PersonBox: View {
    @State var name: String
    @State var email: String
    @State var tel: String

    var body: some View {
        GroupBox(label: Label("User Information", systemImage: "person.fill")) {
            VStack(alignment: .leading) {
                Text("Name: \(name)")
                Text("Email: \(email)")
                Text("Phone: \(tel)")
            }
            .padding(.top, 4)
        }
    }
}
