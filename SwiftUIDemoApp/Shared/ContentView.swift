//
//  ContentView.swift
//  Shared
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var index: Int = 1
    var body: some View {
        TabView(selection: $index) {
            Menu()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
           
            SettingsView()
                .tabItem {
                    Label("Setting", systemImage: "circle.hexagongrid")
                    
                }
            ContextMenuSample()
                .tabItem {
                    Label("Context menu", systemImage: "newspaper.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
