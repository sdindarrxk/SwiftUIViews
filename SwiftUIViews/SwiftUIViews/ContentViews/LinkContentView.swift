//
//  ContentView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 30.10.2024.
//

import SwiftUI
import SafariServices

struct LinkContentView: View {

    @State private var showSafari = false

    var body: some View {
        VStack {
            Link("OpenAI Website", destination: URL(string: "https://www.google.com")!)
                .font(.subheadline)
                .padding()

            Link(destination: URL(string: "https://www.google.com")!) {
                Label("Visit OpenAI", systemImage: "link")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()

            Button("Open OpenAI in App") {
                showSafari = true
            }
            .sheet(isPresented: $showSafari) {
                SafariView(urlString: "https://www.google.com")
            }
            .padding()
        }
    }
}

struct SafariView: UIViewControllerRepresentable {
    let urlString: String

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        if let url = URL(string: urlString) {
            return SFSafariViewController(url: url)
        }
        return SFSafariViewController(url: URL(string: "")!)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}

#Preview {
    LinkContentView()
}
