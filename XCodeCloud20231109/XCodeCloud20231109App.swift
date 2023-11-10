//
//  XCodeCloud20231109App.swift
//  XCodeCloud20231109
//
//  Created by Tan Chan on 11/9/23.
//

import SwiftUI

@main
struct XCodeCloud20231109App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
