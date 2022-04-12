//
//  ToDoListItem+CoreDataProperties.swift
//  MC1-Galas-Trape
//
//  Created by Renzo Alvaroshan on 11/04/22.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var completed: Bool

}

extension ToDoListItem : Identifiable {

}
