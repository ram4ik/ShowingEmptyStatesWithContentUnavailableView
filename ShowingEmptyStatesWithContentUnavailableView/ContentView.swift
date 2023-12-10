//
//  ContentView.swift
//  ShowingEmptyStatesWithContentUnavailableView
//
//  Created by test on 10.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
