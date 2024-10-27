//
//  CustomNavigationView.swift
//  SwiftUIViews
//
//  Created by Sabri DİNDAR on 27.10.2024.
//

import SwiftUI

struct CustomNavigationView<Content: View>: View {
    var title: String
    var destinationTitle: String
    var leadingItems: [ViewWrapper]?
    var trailingItems: [ViewWrapper]?
    var content: () -> Content

    init(
        title: String,
        destinationTitle: String,
        leadingItems: [ViewWrapper]? = nil,
        trailingItems: [ViewWrapper]? = nil,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.title = title
        self.destinationTitle = destinationTitle
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
        self.content = content
        setupNavigationAppearance()
    }

    var body: some View {
        NavigationStack {
            VStack {
                content()
                NavigationLink(destination: DateContentView()) {
                    Text("Go to \(destinationTitle)")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: HStack {
                    ForEach(leadingItems ?? []) { item in
                        item.view
                    }
                },
                trailing: HStack {
                    ForEach(trailingItems ?? []) { item in
                        item.view
                    }
                })
        }
    }

    fileprivate func setupNavigationAppearance(backgroundColor: UIColor = .systemBlue) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}

struct ViewWrapper: Identifiable {
    let id = UUID()
    let view: AnyView
}

struct NavigationContentView: View {
    var body: some View {
        CustomNavigationView(
            title: "Home",
            destinationTitle: "Detail View",
            leadingItems: [
                ViewWrapper(view: AnyView(Button(action: {
                    print("Leading Item 1 tapped")
                }) {
                    Text("Leading 1")
                        .foregroundColor(.white)
                }))
            ],
            trailingItems: [
                ViewWrapper(view: AnyView(Button(action: {
                    print("Trailing Item 1 tapped")
                }) {
                    Text("Trailing 1")
                        .foregroundColor(.white)
                }))
            ]
        ) {
            VStack {
                Text("Welcome to the Home View!")
                    .font(.largeTitle)
                    .padding()

                Text("This is where you can add any content you like.")
                    .padding()
            }
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationContentView()
    }
}
