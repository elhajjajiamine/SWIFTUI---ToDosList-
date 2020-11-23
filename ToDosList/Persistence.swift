//
//  Persistence.swift
//  ToDosList
//
//  Created by elhajjaji on 23/11/2020.
//

import Foundation
import CoreData

struct persistenceController {
    
    static let shared = persistenceController()
    
    let container : NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "TodosList")
        container.loadPersistentStores { (storeDescription, error) in
            
            if let error = (error as NSError?) {
                fatalError("Unresolved error : \(error))")            }
        }
    }
}
