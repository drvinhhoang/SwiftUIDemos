//
//  Persistence.swift
//  SwiftUICoreDataDemo
//
//  Created by VINH HOANG on 20/11/2022.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentCloudKitContainer
    
    init() {
        container = NSPersistentCloudKitContainer(name: "Products")
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                fatalError("container load failed: \(error)")
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
