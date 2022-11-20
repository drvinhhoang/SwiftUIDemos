//
//  SwiftUICoreDataDemoApp.swift
//  Shared
//
//  Created by VINH HOANG on 20/11/2022.
//

import SwiftUI

@main
struct SwiftUICoreDataDemoApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
