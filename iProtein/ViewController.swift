//
//  ViewController.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 6/26/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit

var singleBond = 0
var doubleBond = 0
var tripleBond = 0
var towardBond = 0
var awayBond = 0
var fiveSided = 0
var sixSided = 0
var sevenSided = 0
var eightSided = 0


class ViewController: UIViewController {
    
    //-----outlets for scroll view and stack view
    
    @IBOutlet weak var stackViewLigandSymbols: UIStackView!
    
    @IBOutlet weak var scrollViewLigandSymbols: UIScrollView!
    
    
    //-----initial segues from home screen
    @IBAction func makeLigandTapped(_ sender: Any) {
        performSegue(withIdentifier: "makeLigandSegue", sender: nil)
    }
    
    @IBAction func makeAminoAcidTapped(_ sender: Any) {
        performSegue(withIdentifier: "makeAminoAcidSegue", sender: nil)
    }
    
    @IBAction func combineTapped(_ sender: Any) {
        performSegue(withIdentifier: "combineSegue", sender: nil)
    }
    
    @IBAction func helpButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "helpSegue", sender: nil)
    }
    
    
    //------segues to go back to home screen
    @IBAction func homeTapped(_ sender: Any) {
        performSegue(withIdentifier: "homeSegue", sender: nil)
    }
    
    @IBAction func homeTappedTwo(_ sender: Any) {
        performSegue(withIdentifier: "homeSegue", sender: nil)
    }
    
    
    
    //-----outlets for ligand symbols
       @IBOutlet weak var singleBondOutlet: UIImageView!
    
      @IBOutlet weak var doubleBondOutlet: UIImageView!
    
    //------actions for single bond
    @IBAction func singleBondTapped(_ sender: Any) {
        singleBond = 1
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sevenSided = 0
        eightSided = 0
        
        if singleBond == 1 {
            singleBondOutlet.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        }
        
        if singleBond == 2 {
            singleBond = 1
        }
    }

    
//-----actions and outlets for double bonds
    
    @IBAction func doubleBondTapped(_ sender: Any) {
        doubleBondOutlet.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        singleBond = 0
        doubleBond = 1
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sevenSided = 0
        eightSided = 0
        
        if doubleBond == 1 {
            doubleBondOutlet.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        }
        
        if doubleBond == 2 {
            doubleBond = 1
    }
    
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        self.scrollViewLigandSymbols?.contentSize = CGSize(width: 320, height: 1000)
        
    self.scrollViewLigandSymbols?.isDirectionalLockEnabled == true

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

