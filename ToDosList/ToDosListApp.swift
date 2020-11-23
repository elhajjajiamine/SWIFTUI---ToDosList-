//
//  ToDosListApp.swift
//  ToDosList
//
//  Created by elhajjaji on 23/11/2020.
//

import SwiftUI

@main
struct ToDosListApp: App {
    let persistenceContainer = persistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}
