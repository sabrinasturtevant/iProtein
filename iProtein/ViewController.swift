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
var sixSidedDouble = 0
var sevenSided = 0
var eightSided = 0

var carbon = 0
var oxygen = 0
var hydrogen = 0
var nitrogen = 0
var phosphorus = 0
var helium = 0


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
    
    @IBOutlet weak var tripleBondOutlet: UIImageView!
    
    @IBOutlet weak var towardBondOutlet: UIImageView!
    
    @IBOutlet weak var awayBondOutlet: UIImageView!
    
    @IBOutlet weak var fiveSidedOutlet: UIImageView!
    
    @IBOutlet weak var sixSidedOutlet: UIImageView!
    
    @IBOutlet weak var sixSidedDoubleOutlet: UIImageView!
    
    @IBOutlet weak var sevenSidedOutlet: UIImageView!
    
    @IBOutlet weak var eightSidedOutlet: UIImageView!
    
    @IBOutlet weak var carbonOutlet: UILabel!
    
    @IBOutlet weak var oxygenOutlet: UILabel!
    
    @IBOutlet weak var hydrogenOutlet: UILabel!
    
    @IBOutlet weak var nitrogenOutlet: UILabel!
    
    @IBOutlet weak var phosphorusOutlet: UILabel!
    
    @IBOutlet weak var heliumOutlet: UILabel!

    
    
    
    
    
    //------actions for single bond
    @IBAction func singleBondTapped(_ sender: Any) {
        singleBond += 1
        
      
        
        
        if singleBond == 2 {
            singleBond = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 1.0
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
        
        
        }

    


    
//-----actions for double bonds
    
    @IBAction func doubleBondTapped(_ sender: Any) {
        doubleBond += 1
        if doubleBond == 2 {
            doubleBond = 1
        }
        singleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 1.0
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    
    }
    
    
    
    
    
    //-----actions for triple bonds
    
    @IBAction func tripleBondTapped(_ sender: Any) {
        tripleBond += 1
        if tripleBond == 2 {
            tripleBond = 1
        }
        doubleBond = 0
        singleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 1.0
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    //-----actions for toward bond
    
    @IBAction func towardBondTapped(_ sender: Any) {
        towardBond += 1
        if towardBond == 2 {
            towardBond = 1
        }
        doubleBond = 0
        tripleBond = 0
        singleBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 1.0
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for away bond
    
    @IBAction func awayBondTapped(_ sender: Any) {
        awayBond += 1
        if awayBond == 2 {
            awayBond = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        singleBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 1.0
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for five sided
    
    @IBAction func fiveSidedTapped(_ sender: Any) {
        towardBond += 1
        if towardBond == 2 {
            towardBond = 1
        }
        doubleBond = 0
        tripleBond = 0
        singleBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 1.0
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    //-----actions for six sided
    
    @IBAction func sixSidedTapped(_ sender: Any) {
        sixSided += 1
        if sixSided == 2 {
            sixSided = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        singleBond = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 1.0
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    //-----actions for six double sided
    
    @IBAction func sixSidedDoubleTapped(_ sender: Any) {
        sixSidedDouble += 1
        if sixSidedDouble == 2 {
            sixSidedDouble = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        singleBond = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 1.0
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    //-----actions for seven sided
    
    @IBAction func sevenSidedTapped(_ sender: Any) {
        sevenSided += 1
        if sevenSided == 2 {
            sevenSided = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        singleBond = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 1.0
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    //-----actions for eight sided
    
    @IBAction func eightSidedTapped(_ sender: Any) {
        eightSided += 1
        if eightSided == 2 {
            eightSided = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        singleBond = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 1.0
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for carbon
    
    @IBAction func carbonTapped(_ sender: Any) {
        carbon += 1
        if carbon == 2 {
            carbon = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        singleBond = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 1.0
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    
    //-----actions for oxygen
    
    @IBAction func oxygenTapped(_ sender: Any) {
        oxygen += 1
        if oxygen == 2 {
            oxygen = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        singleBond = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 1.0
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    
    //-----actions for hydrogen
    
    @IBAction func hydrogenTapped(_ sender: Any) {
        hydrogen += 1
        if hydrogen == 2 {
            hydrogen = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        singleBond = 0
        nitrogen = 0
        phosphorus = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 1.0
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for nitrogen
    
    @IBAction func nitrogenTapped(_ sender: Any) {
        nitrogen += 1
        if nitrogen == 2 {
            nitrogen = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        singleBond = 0
        phosphorus = 0
        helium = 0

        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 1.0
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for phosphorus
    
    @IBAction func phosphorusTapped(_ sender: Any) {
        phosphorus += 1
        if phosphorus == 2 {
            phosphorus = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        singleBond = 0
        helium = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 1.0
        heliumOutlet.alpha = 0.2
    }
    
    
    
    
    
    //-----actions for helium

    @IBAction func heliumTapped(_ sender: Any) {
        helium += 1
        if helium == 2 {
            helium = 1
        }
        doubleBond = 0
        tripleBond = 0
        towardBond = 0
        awayBond = 0
        fiveSided = 0
        sixSided = 0
        sixSidedDouble = 0
        sevenSided = 0
        eightSided = 0
        carbon = 0
        oxygen = 0
        hydrogen = 0
        nitrogen = 0
        phosphorus = 0
        singleBond = 0
        
        singleBondOutlet.alpha = 0.2
        doubleBondOutlet.alpha = 0.2
        tripleBondOutlet.alpha = 0.2
        awayBondOutlet.alpha = 0.2
        towardBondOutlet.alpha = 0.2
        fiveSidedOutlet.alpha = 0.2
        sixSidedOutlet.alpha = 0.2
        sixSidedDoubleOutlet.alpha = 0.2
        sevenSidedOutlet.alpha = 0.2
        eightSidedOutlet.alpha = 0.2
        carbonOutlet.alpha = 0.2
        oxygenOutlet.alpha = 0.2
        hydrogenOutlet.alpha = 0.2
        nitrogenOutlet.alpha = 0.2
        phosphorusOutlet.alpha = 0.2
        heliumOutlet.alpha = 1.0
    }
    

    



    
    
    override func viewDidLoad() {
        self.scrollViewLigandSymbols?.contentSize = CGSize(width: 320, height: 1000)
        
        
    self.scrollViewLigandSymbols?.isDirectionalLockEnabled == true

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

