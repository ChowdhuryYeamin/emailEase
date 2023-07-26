//
//  email_drafter_swiftApp.swift
//  email_drafter_swift
//
//  Created by Yamin Ayon on 7/26/23.
//

import SwiftUI

@main
struct email_drafter_swiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
