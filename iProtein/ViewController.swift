//
//  ViewController.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 6/26/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit

let context = UIGraphicsGetCurrentContext()
var currentPosition: CGPoint?


class ViewController: UIViewController {
    
    
    /* if singleBond == 1 {
     context?.setLineWidth(2.0)
     context?.setStrokeColor(UIColor.black.cgColor)
     
     
     context?.move(to: currentPosition!)
     context?.addLine(to: CGPoint(x: 400, y: 300))
     context?.strokePath()
     
     self.view.setNeedsDisplay()
     
     print("c")
     */
    
    
    let lysineString =
            """
            polar
            positive
            hydrophilic
            chemical formula - C6H14N202


            """
    let histidineString =
            """
            polar
            positive
            hydrophilic
            chemical formula - C6H9N3O2


            """
    let arginineString =
            """
            polar
            positive
            hydrophilic
            chemical formula - C6H14N4O2


            """
    
    let glutamicAcidString =
            """
            polar
            negative
            hydrophilic
            chemical formula - C5H9NO4


            """
    let asparticAcidString =
            """
            polar
            negative
            hydrophilic
            chemical formula - C4H7NO4


            """
    
    let serineString =
            """
            polar
            equal
            hydrophilic
            chemical formula - C3H7NO3


            """
    
    let theonineString =
            """
            polar
            equal
            hydrophilic
            chemical formula - C4H9NO3


            """
    
    let tyrosineString =
            """
            polar
            equal
            hydrophilic
            chemical formula - C9H11NO3


            """
    let glutamineString =
            """
            polar
            equal
            hydrophilic
            chemical formula - C5H10N203


            """
    
    let asparagineString =
            """
            polar
            equal
            hydrophilic
            chemical formula - C4H8N203


            """
    
    let valineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C5H11NO2


            """
    
    let phenylalanineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C9H11N02


            """
    
    let prolineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C5H9N02


            """
    
    let leucineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C6H13NO2


            """
    
    let methionineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C5H11NO2S


            """
    
    let isoleucineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C6H12NO2


            """
    let alanineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C3H7NO2


            """
    let cystineString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C6H12N2O4S2


            """
    let tryptophanString =
            """
            non-polar
            no charge
            hydrophobic
            chemical formula - C11H12N202


            """
    
    let glycineString =
            """
            non-polar
            no charge
            hydrophobic and hydrophilic
            chemical formula - C2H5NO2


            """
    
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
    
    
    
    
    
    //segues on help screen

    @IBAction func backButtonMainScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonMainScreenSegue", sender: nil)
    }
    
    
    
    
    @IBAction func lysineTapped(_ sender: Any) {
        performSegue(withIdentifier: "lysineSegue", sender: nil)
    }
    @IBAction func lysineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "lysineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func histidineTapped(_ sender: Any) {
        performSegue(withIdentifier: "histidineSegue", sender: nil)
    }
    @IBAction func histidineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "histidineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func arginineTapped(_ sender: Any) {
        performSegue(withIdentifier: "arginineSegue", sender: nil)
    }
    @IBAction func arginineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "arginineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func asparticAcidTapped(_ sender: Any) {
        performSegue(withIdentifier: "asparticAcidSegue", sender: nil)
    }
    @IBAction func asparticAcidBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "asparticAcidBackSegue", sender: nil)
    }
    
    
    
    @IBAction func glutamicAcidTapped(_ sender: Any) {
        performSegue(withIdentifier: "glutamicAcidSegue", sender: nil)
    }
    @IBAction func glutamicAcidBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "glutamicAcidBackSegue", sender: nil)
    }
    
    
    
    @IBAction func asparagineTapped(_ sender: Any) {
        performSegue(withIdentifier: "asparagineSegue", sender: nil)
    }
    @IBAction func asparagineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "asparagineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func theronineTapped(_ sender: Any) {
        performSegue(withIdentifier: "threonineSegue", sender: nil)
    }
    @IBAction func threonineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "threonineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func serineTapped(_ sender: Any) {
        performSegue(withIdentifier: "serineSegue", sender: nil)
    }
    @IBAction func serineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "serineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func glutamineTapped(_ sender: Any) {
        performSegue(withIdentifier: "glutamineSegue", sender: nil)
    }
    @IBAction func glutamineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "glutamineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func tyrosineTapped(_ sender: Any) {
        performSegue(withIdentifier: "tyrosineSegue", sender: nil)
    }
    @IBAction func tyrosineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "tyrosineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func glycineTapped(_ sender: Any) {
        performSegue(withIdentifier: "glycineSegue", sender: nil)
    }
    @IBAction func glycineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "glycineBackTapped", sender: nil)
    }
    
    
    
    @IBAction func prolineTapped(_ sender: Any) {
        performSegue(withIdentifier: "prolineSegue", sender: nil)
    }
    @IBAction func prolineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "prolineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func methionineTapped(_ sender: Any) {
        performSegue(withIdentifier: "methionineSegue", sender: nil)
    }
    @IBAction func methionineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "methionineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func valineTapped(_ sender: Any) {
        performSegue(withIdentifier: "valineSegue", sender: nil)
    }
    @IBAction func valineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "valineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func phenylalanineTapped(_ sender: Any) {
        performSegue(withIdentifier: "phenylalanineSegue", sender: nil)
    }
    @IBAction func phenylalanineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "phenylalanineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func leucineTapped(_ sender: Any) {
        performSegue(withIdentifier: "leucineSegue", sender: nil)
    }
    @IBAction func leucineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "leucineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func tryptophanTapped(_ sender: Any) {
        performSegue(withIdentifier: "tryptophanSegue", sender: nil)
    }
    @IBAction func tryptophanBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "tryptophanBackSegue", sender: nil)
    }
    
    
    
    @IBAction func cystineTapped(_ sender: Any) {
        performSegue(withIdentifier: "cystineSegue", sender: nil)
    }
    @IBAction func cystineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "cystineBackSegue", sender: nil)
    }
    
    
    @IBAction func isoleucineTapped(_ sender: Any) {
        performSegue(withIdentifier: "isoleucineSegue", sender: nil)
    }
    @IBAction func isoleucineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "isoleucineBackSegue", sender: nil)
    }
    
    
    
    @IBAction func alanineTapped(_ sender: Any) {
        performSegue(withIdentifier: "alanineSegue", sender: nil)
    }
    @IBAction func alanineBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "alanineBackSegue", sender: nil)
    }
    
    
    
    
    //outlets for help screen text boxes
    @IBOutlet weak var lysinehelpOutlet: UILabel!
    @IBOutlet weak var histidineHelpOutlet: UILabel!
    @IBOutlet weak var argininehelpOutlet: UILabel!
    @IBOutlet weak var glutamicAcidHelpOutlet: UILabel!
    @IBOutlet weak var asparticAcidHelpOutlet: UILabel!
    @IBOutlet weak var serineHelpOutlet: UILabel!
    @IBOutlet weak var threonineHelpOutlet: UILabel!
    @IBOutlet weak var tyrosineHelpOutlet: UILabel!
    @IBOutlet weak var glutamineHelpOutlet: UILabel!
    @IBOutlet weak var asparagineHelpOutlet: UILabel!
    @IBOutlet weak var valineHelpOutlet: UILabel!
    @IBOutlet weak var phenylalanineHelpOutlet: UILabel!
    @IBOutlet weak var prolineHelpOutlet: UILabel!
    @IBOutlet weak var leucineHelpOutlet: UILabel!
    @IBOutlet weak var methionineHelpOutlet: UILabel!
    @IBOutlet weak var isoleucineHelpOutlet: UILabel!
    @IBOutlet weak var alanineHelpOutlet: UILabel!
    @IBOutlet weak var tryptophanHelpOutlet: UILabel!
    @IBOutlet weak var cystineHelpOutlet: UILabel!
    @IBOutlet weak var glycineHelpOutlet: UILabel!
    
    
    

    
    
    
    
    
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
        
        lysinehelpOutlet?.text = lysineString
        histidineHelpOutlet?.text = histidineString
        argininehelpOutlet?.text = arginineString
        glutamineHelpOutlet?.text = glutamineString
        glutamicAcidHelpOutlet?.text = glutamicAcidString
        asparticAcidHelpOutlet?.text = asparticAcidString
        serineHelpOutlet?.text = serineString
        threonineHelpOutlet?.text = theonineString
        tyrosineHelpOutlet?.text = tyrosineString
        asparagineHelpOutlet?.text = asparagineString
        valineHelpOutlet?.text = valineString
        phenylalanineHelpOutlet?.text = phenylalanineString
        prolineHelpOutlet?.text = prolineString
        leucineHelpOutlet?.text = leucineString
        methionineHelpOutlet?.text = methionineString
        isoleucineHelpOutlet?.text = isoleucineString
        alanineHelpOutlet?.text = alanineString
        tryptophanHelpOutlet?.text = tryptophanString
        cystineHelpOutlet?.text = cystineString
        glycineHelpOutlet?.text = glycineString

        //    let shapeView = Shape(origin: view.center)
        //    self.view.addSubview(shapeView)

        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if currentPosition == nil {
            currentPosition = CGPoint(x: 0, y: 0)
        }
        if let touch = touches.first {
            currentPosition = touch.location(in: view)
            print(currentPosition!)
        }


}
    

}

/*class Shape : UIView {
    
    func straightLine() {
    
    let size : CGFloat = 100
    let lineWidth : CGFloat = 2
    
    var line = UIBezierPath()
    line.move(to: currentPosition!)
        line.addLine(to: CGPoint(x: 40, y: 30))
        line.stroke(with: <#T##CGBlendMode#>, alpha: <#T##CGFloat#>)

    }

}





class Shape : UIView {
    
    let size : CGFloat = 150
    let lineWidth: CGFloat = 3
    
    init(origin: CGPoint) {
        super.init(frame: CGRect(x: 0, y: 0, width: size, height: size))
        self.center = origin
        addGestures()
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 10)
        UIColor.red.setFill()
        path.fill()
        
        path.lineWidth = self.lineWidth
        UIColor.black.setStroke()
        path.stroke()
    }
    
    func addGestures(){
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        self.addGestureRecognizer(panGR)
        
      //  let rotateGR = UIPanGestureRecognizer(target: self, action: #selector(handleRotate))
      //  self.addGestureRecognizer(panGR)
    }
    
    @objc func handlePan(panGR: UIPanGestureRecognizer){
        self.superview?.bringSubviewToFront(self)
        let translation = panGR.translation(in: self)
        self.center.x += translation.x
        self.center.y += translation.y
        panGR.setTranslation(.zero, in: self)
    }
    
  // @objc func handleRotate() {
  //      self.superview?.bringSubviewToFront(self)
  //      let rotation = rotation
   //     self.transform = self.transform.rotated(by: rotation)
    }
*/
 
 
