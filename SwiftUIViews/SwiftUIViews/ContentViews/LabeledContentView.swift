//
//  LabeledContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 28.10.2024.
//

import SwiftUI

struct LabelContentView: View {

    private var name = "Sabri"
    private var email = "sabridindar34@gmail.com"

    var body: some View {
        Form {
            Section(header: Text("User Information")) {
                LabeledContent("Name", value: name)
                LabeledContent("Email", value: email)
                LabeledContent("Date", value: Date(), format: .dateTime)
                LabeledContent(content: {
                    Label("Location", systemImage: "mappin.and.ellipse")
                }, label: {
                    Text("Istanbul, TR")
                })
                .padding()
            }
        }
    }
}

#Preview {
    LabelContentView()
}
