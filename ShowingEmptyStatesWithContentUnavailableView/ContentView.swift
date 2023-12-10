//
//  ContentView.swift
//  ShowingEmptyStatesWithContentUnavailableView
//
//  Created by test on 10.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentUnavailableView("No snipets", systemImage: "swift", description: Text("You don't have any saved snippets"))
    }
}

#Preview {
    ContentView()
}
