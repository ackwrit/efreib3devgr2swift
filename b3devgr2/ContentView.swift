//
//  ContentView.swift
//  b3devgr2
//
//  Created by Djino Dissingar on 18/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) {
                MainView()
            }
        })
    }
}

#Preview {
    ContentView()
}
