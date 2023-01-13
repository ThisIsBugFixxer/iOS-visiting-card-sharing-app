//
//  NextGenCardsApp.swift
//  NextGenCards
//
//  Created by Priyam Mehta on 17/03/22.
//

import SwiftUI

@main
struct NextGenCardsApp: App {
 
    
    let persistenceController = PersistenceController.shared

    @StateObject var scannedCode = sharedData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(scannedCode)
        }
    }
}
