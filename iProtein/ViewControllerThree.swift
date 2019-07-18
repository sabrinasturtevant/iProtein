//
//  ViewControllerThree.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 7/16/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import Foundation
import CoreData
import UIKit




class ViewControllerThree: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
         @IBOutlet weak var combineLigandTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == combineLigandTableView {
            return ligands.count
        } else {
            return proteins.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == combineLigandTableView {
        let cell = combineLigandTableView.dequeueReusableCell(withIdentifier: "combineLigand") as! UITableViewCell
        
        
        cell.textLabel?.text = ligands[indexPath.row].name
        return cell
    }
    
    else {
    let cell = combineProteinTableView.dequeueReusableCell(withIdentifier: "combineProtein") as! UITableViewCell
    
    
    cell.textLabel?.text = proteins[indexPath.row].name
    return cell
    }
    
    }
    
    
    @IBOutlet weak var combineProteinTableView: UITableView!
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func backButtonCombineScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonCombineScreenSegue", sender: nil)
    }


    @IBAction func combineTapped(_ sender: Any) {
        performSegue(withIdentifier: "combineThemSegue", sender: nil)
    }
    

    
   
}
