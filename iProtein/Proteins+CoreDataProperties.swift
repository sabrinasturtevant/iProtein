//
//  Proteins+CoreDataProperties.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/12/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//
//

import Foundation
import CoreData


extension Proteins {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Proteins> {
        return NSFetchRequest<Proteins>(entityName: "Proteins")
    }

    @NSManaged public var name: String?

}
