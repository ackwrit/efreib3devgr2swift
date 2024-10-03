//
//  DashBoardView.swift
//  b3devgr2
//
//  Created by Djino Dissingar on 03/10/2024.
//

import SwiftUI

struct DashBoardView: View {
    var body: some View {
        TabView(selection:.constant(1)) {
            Text("coucou")
                .tabItem {
                    Image(systemName: "person")
                }
            Text("Bonjour")
                .tabItem {
                    Image(systemName: "gear")
                }
            Text("Les toilettes")
                .tabItem {
                    Image(systemName: "toilet")
                }
        }
    }
}

#Preview {
    DashBoardView()
}
