//
//  persistenceService.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/10/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import Foundation
import CoreData


class PersistenceService {
    
    private init() {}
    
   @objc(Ligandsclass) static var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    static var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "coreData")
        container.loadPersistentStores(completionHandler: { (NSPersistentStoreDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
   static func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
                print("SAVED")
            }
            catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
}
