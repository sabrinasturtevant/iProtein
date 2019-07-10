//
//  Ligands+CoreDataProperties.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/10/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//
//

import Foundation
import CoreData


extension Ligands {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ligands> {
        return NSFetchRequest<Ligands>(entityName: "Ligands")
    }

    @NSManaged public var name: String?

}
