//
//  ViewControllerTwo.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/15/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class ViewControllerTwo: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
     
     
     
     
     
     //----outlets and actions for table view on save proteins screen
     @IBOutlet weak var saveProteinsTableView: UITableView!
     
     @IBAction func createNewProteinSaveScreenTapped(_ sender: Any) {
     let alert = UIAlertController(title: "add protein", message: nil, preferredStyle: .alert)
     alert.addTextField { (textField) in
     textField.placeholder = "name"
     }
     
     let action = UIAlertAction(title: "add", style: .default) { (_) in
     let Proteinname = alert.textFields!.first!.text!
     
     let proteins = Proteins(context: PersistenceServiceTwo.contextTwo)
     proteins.name = Proteinname
     
     PersistenceServiceTwo.saveContext()
     //self.proteins.append(proteins)
     self.saveProteinsTableView.reloadData()
     
     }
     
        
        
     let actionTwo = UIAlertAction(title: "cancel", style: .default)
     
     alert.addAction(action)
     alert.addAction(actionTwo)
     present(alert, animated: true, completion: nil)
     
     }
     
     
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proteins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cellTwo = saveProteinsTableView.dequeueReusableCell(withIdentifier: "coreDataProtein", for: indexPath) as UITableViewCell
        
        cellTwo.textLabel?.text = proteins[indexPath.row].name
        return cellTwo
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

}
