//
//  persistanceServiceTwo.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/12/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import Foundation
import CoreData



class PersistenceServiceTwo {
    
    private init() {}
    
    
    @objc(Proteinclass) static var contextTwo:
        NSManagedObjectContext {
        return persistentContainerTwo.viewContext
    }
    
    static var persistentContainerTwo: NSPersistentContainer = {
        
        let containerTwo = NSPersistentContainer(name: "coreDataProtein")
        containerTwo.loadPersistentStores(completionHandler: { (NSPersistentStoreDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return containerTwo
    }()
    
    static func saveContext () {
        let contextTwo = persistentContainerTwo.viewContext
        if contextTwo.hasChanges {
            do {
                try contextTwo.save()
                print("SAVED")
            }
            catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
}

