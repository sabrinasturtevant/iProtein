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
    
    
    @IBOutlet weak var alanineImageView: UIImageView!
    @IBOutlet weak var methionineImageView: UIImageView!
    @IBOutlet weak var phenylalanineImageView: UIImageView!
    @IBOutlet weak var prolineImageView: UIImageView!
    @IBOutlet weak var tryptophanImageView: UIImageView!
    @IBOutlet weak var cystineImageView: UIImageView!
    @IBOutlet weak var valineImageView: UIImageView!
    @IBOutlet weak var leucineImageView: UIImageView!
    @IBOutlet weak var isoleucineImageView: UIImageView!
    @IBOutlet weak var glycineImageView: UIImageView!
    @IBOutlet weak var arginineImageView: UIImageView!
    @IBOutlet weak var lysineImageView: UIImageView!
    @IBOutlet weak var histidineImageView: UIImageView!
    @IBOutlet weak var glutamicAcidImageView: UIImageView!
    @IBOutlet weak var asparticAcidImageView: UIImageView!
    @IBOutlet weak var glutamineImageView: UIImageView!
    @IBOutlet weak var tyrosineImageView: UIImageView!
    @IBOutlet weak var theronineImageView: UIImageView!
    @IBOutlet weak var serineImageView: UIImageView!
    @IBOutlet weak var asparagineImageView: UIImageView!
    
    
    
    
    
     
    
     
     //----outlets and actions for table view on save proteins screen
     @IBOutlet weak var saveProteinsTableView: UITableView!
     
     @IBAction func createNewProteinSaveScreenTapped(_ sender: Any) {
     let alert = UIAlertController(title: "add protein", message: nil, preferredStyle: .alert)
     alert.addTextField { (textField) in
     textField.placeholder = "name"
     }
     
     let action = UIAlertAction(title: "add", style: .default) { (_) in
     let Proteinname = alert.textFields!.first!.text!
     
     let proteins2 = Proteins(context: PersistenceServiceTwo.contextTwo)
     proteins2.name = Proteinname
     
     PersistenceServiceTwo.saveContext()
        proteins.append(proteins2)

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "proteinSegue", sender: self)
    }
    
    
    @IBAction func backButtonProteinSaveScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backProteinSaveScreenSegue", sender: nil)
    }
    
    @IBAction func homeTappedTwo(_ sender: Any) {
        performSegue(withIdentifier: "homeSegue", sender: nil)
    }
    
    
    
    
    
    
    //actions for building protein
    
    @IBAction func alanineTapped(_ sender: Any) {
        alanineImageView.alpha = 1.0
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    
    @IBAction func methinonineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 1.0
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func phenylalanineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 1.0
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func prolineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 1.0
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func tryptophanTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 1.0
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func cystineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 1.0
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func valineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 1.0
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func leucineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 1.0
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func isoleucineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 1.0
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func glycineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 1.0
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func arginineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 1.0
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func lysineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 1.0
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func histidineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 1.0
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func glutamicAcidTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 1.0
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func asparticAcidTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 1.0
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func glutamineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 1.0
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func tyrosineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 1.0
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    @IBAction func theronineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 1.0
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 0.2
    }
    
    
    @IBAction func serineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 1.0
        asparagineImageView.alpha = 0.2
    }
    
    
    @IBAction func asparagineTapped(_ sender: Any) {
        alanineImageView.alpha = 0.2
        methionineImageView.alpha = 0.2
        phenylalanineImageView.alpha = 0.2
        prolineImageView.alpha = 0.2
        tryptophanImageView.alpha = 0.2
        cystineImageView.alpha = 0.2
        valineImageView.alpha = 0.2
        leucineImageView.alpha = 0.2
        isoleucineImageView.alpha = 0.2
        glycineImageView.alpha = 0.2
        arginineImageView.alpha = 0.2
        lysineImageView.alpha = 0.2
        histidineImageView.alpha = 0.2
        glutamicAcidImageView.alpha = 0.2
        asparticAcidImageView.alpha = 0.2
        glutamineImageView.alpha = 0.2
        tyrosineImageView.alpha = 0.2
        theronineImageView.alpha = 0.2
        serineImageView.alpha = 0.2
        asparagineImageView.alpha = 1.0
    }
    
    
    @IBOutlet weak var proteinImageViewOne: UIImageView!

    
    
    var mySize = CGSize(width: 100, height: 100)
    var myImage = UIImage(named: "whiteRectangleSide")

    
    @IBAction func proteinDrawViewTapped(_ sender: Any) {
        if alanineImageView.alpha == 1.0 {
            myImage = UIImage(named: "Alanine")!
            self.myImage!.draw(at: currentPosition!)

        }
    }
    
    

}
