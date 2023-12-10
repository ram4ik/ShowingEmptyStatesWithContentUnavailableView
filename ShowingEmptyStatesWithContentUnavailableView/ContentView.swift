//
//  ContentView.swift
//  ShowingEmptyStatesWithContentUnavailableView
//
//  Created by test on 10.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingConfirmation = false
    
    var body: some View {
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create snippet") {
                showingConfirmation.toggle()
            }
            .buttonStyle(.borderedProminent)
            .confirmationDialog("Confirmation dialog", isPresented: $showingConfirmation) {
                Text("Confirmation!")
            } message: {
                Text("Confirmation message")
            }
        }
    }
}

#Preview {
    ContentView()
}
