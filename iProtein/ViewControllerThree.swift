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

var myIndexTwo = 0
var myIndexThree = 0
var ligandString = String()
var cell = UITableViewCell()
var cellTwo = UITableViewCell()


class ViewControllerThree: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var combineProteinTableView: UITableView!
    

    
    @IBOutlet weak var dynamicProteinNameLabel: UILabel!
    
    @IBOutlet weak var dynamicLigandNameLabel: UILabel!
    
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
        cell = combineLigandTableView.dequeueReusableCell(withIdentifier: "combineLigand") as! UITableViewCell

        cell.textLabel?.text = ligands[indexPath.row].name
        return cell
    }
    
    else  {
        cellTwo = combineProteinTableView.dequeueReusableCell(withIdentifier: "combineProtein") as! UITableViewCell
        
        cellTwo.textLabel?.text = proteins[indexPath.row].name
        return cellTwo
            }
    
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == combineLigandTableView {
        myIndexTwo = indexPath.row
            print(myIndexTwo)
        } else   {myIndexThree = indexPath.row
            print(myIndexThree)
        }

    }

    


    
    
    
    
    
    
    
    
    
    
    
    @IBAction func backButtonCombineScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonCombineScreenSegue", sender: nil)
    }


    @IBAction func combineTapped(_ sender: Any) {
        performSegue(withIdentifier: "combineThemSegue", sender: nil)
    }
    
    
    @IBAction func backButtonCombineCombineTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonCombineSegue", sender: nil)
    }
    
}

