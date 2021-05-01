//
//  contactListViewModel.swift
//  contactList
//
//  Created by guest1 on 01/05/21.
//

import Foundation
import UIKit
import CoreData

class ContactListViewModel{
    func saveData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let data = NSEntityDescription.insertNewObject(forEntityName: "ContactList", into: context)
        data.setValue("String you need to add", forKey: "name")
        do {
            try context.save()
        } catch {
        print("No error")
        }
    }
    func fecthData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "ContactList")
        request.returnsObjectsAsFaults = false
        do {
            let results = try context.fetch(request)
            let count = results.count
            if 0 < count {
                for todoList in results as! [NSManagedObject] {
                    if let todoList = todoList.value(forKey: "name") as? String {
                        print(todoList)
                    }
                }
            }
        }
        catch {
        print(error)
        }
    }
}
