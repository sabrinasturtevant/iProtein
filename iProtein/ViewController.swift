//
//  ViewController.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 6/26/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit
import CoreData

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
    
    
    
    var ligands = [Ligands]()
    
    
    
    
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
    
    
    
    
    
    //outlets for table view on save ligand screen
    @IBOutlet weak var saveLigandTableView: UITableView!
    
    
    @IBAction func createNewLigandSaveScreenTapped(_ sender: Any) {
        let alert = UIAlertController(title: "add ligand", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "name"
        }
        
        let action = UIAlertAction(title: "Add", style: .default) { (_) in
            let Ligandname = alert.textFields!.first!.text!
            
            let ligands = Ligands(context: PersistenceService.context)
            ligands.name = Ligandname
            
            PersistenceService.saveContext()
            self.ligands.append(ligands)
            self.saveLigandTableView.reloadData()
            

            
        //alert.addAction(UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: nil))
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
                let entity = NSEntityDescription.entity(forEntityName: "Ligands", in: context)!
        
    }
    
    
    
    //-----outlets for scroll view and stack view on make ligand screen
    
    @IBOutlet weak var stackViewLigandSymbols: UIStackView!
    
    @IBOutlet weak var scrollViewLigandSymbols: UIScrollView!
    
    
    
    
    
    
    //-----outlets for scroll,stack view on help ligand screen
    
    @IBOutlet weak var scrollViewLigandSymbolsHelp: UIScrollView!
    
    @IBOutlet weak var stackViewLigandSymbolsHelp: UIStackView!
    
    
    
    
    
    
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
    
    
    
    
    
    
    
    
    //-----segues on save screens
    
    @IBAction func backButtonLigandSaveScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonLigandSaveScreenSegue", sender: nil)
        print("any")
    }
    
    
    
    //segues on help screen

    @IBAction func backButtonMainScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonMainScreenSegue", sender: nil)
    }
    
    
    @IBAction func backButtonHelpScreenTapped(_ sender: Any) {
        performSegue(withIdentifier: "backHelpScreenSegue", sender: nil)
    }
    
    @IBAction func ligandQuestionTapped(_ sender: Any) {
        performSegue(withIdentifier: "ligandQuestionSegue", sender: nil)
    }
    
    @IBAction func aminoAcidQuestionTapped(_ sender: Any) {
        performSegue(withIdentifier: "aminoAcidQuestionSegue", sender: nil)
    }
    
    
    @IBAction func backButtonLigandHelpTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonSegue", sender: nil)
    }
    
    @IBAction func ligandSymbolHelpTapped(_ sender: Any) {
        performSegue(withIdentifier: "symbolHelpLigandSegue", sender: nil)
    }
    
    @IBAction func backButtonLigandSymbolHelpTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonLigandSymbolHelpSegue", sender: nil)
    }
    
    
    @IBAction func aminoAcidSymbolHelpTapped(_ sender: Any) {
        performSegue(withIdentifier: "symbolHelpAminoAcidSegue", sender: nil)
    }
    
    @IBAction func backButtonAminoAcidHelpTapped(_ sender: Any) {
        performSegue(withIdentifier: "backButtonAminoAcidHelpSegue", sender: nil)
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
    
    

    
    
    
    
    
    //-----outlets for ligand symbols help
    @IBOutlet weak var dynamicLigandHelpImageView: UIImageView!
    @IBOutlet weak var dynamicLigandHelpLabel: UILabel!
    @IBOutlet weak var tapASymbolToLearnMoreLabel: UILabel!
    @IBOutlet weak var dynamicHeaderLigandHelpLabel: UILabel!
    
    
    
    
    //-----outlets for help screen amino acids text boxes
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
    
    
    
    //-----outlets for ligand symbol help screen
    @IBOutlet weak var singleBondHelpOutlet: UIImageView!
    @IBOutlet weak var doubleBondHelpOutlet: UIImageView!
    @IBOutlet weak var tripleBondHelpOutlet: UIImageView!
    @IBOutlet weak var towardBondHelpOutlet: UIImageView!
    @IBOutlet weak var awayBondHelpOutlet: UIImageView!
    @IBOutlet weak var fiveSidedHelpOutlet: UIImageView!
    @IBOutlet weak var sixSidedHelpOutlet: UIImageView!
    @IBOutlet weak var sixeSidedDoubleHelpOutlet: UIImageView!
    @IBOutlet weak var sevenSidedHelpOutlet: UIImageView!
    @IBOutlet weak var eightSidedHelpOutlet: UIImageView!
    @IBOutlet weak var carbonHelpOutlet: UILabel!
    @IBOutlet weak var oxygenHelpOutlet: UILabel!
    @IBOutlet weak var hydrogenHelpOutlet: UILabel!
    @IBOutlet weak var nitrogenHelpOutlet: UILabel!
    @IBOutlet weak var phosphorusHelpOutlet: UILabel!
    @IBOutlet weak var heliumHelpOutlet: UILabel!
    
    
    
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

    
    
    
    //-----actions for ligand symbol help screen

    @IBAction func singleBondHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 1.0
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "singleBond")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        single bond
        """
        
        dynamicLigandHelpLabel.text =
        """
        a type of covalent bond where two
        atoms share one pair of electrons
        """
    }
    
    
    @IBAction func doubleBondHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 1.0
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "doubleBond")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        double bond
        """
        
        dynamicLigandHelpLabel.text =
        """
        similar to a single bond, a double bond
        forms when two atoms share two pairs
        of electrons

        """
    }
    
    @IBAction func tripleBondHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 1.0
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "tripleBond")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        triple bond
        """
        
        dynamicLigandHelpLabel.text =
        """
        a chemical bond where two atoms
        share three pairs of electrons

        """
    }
    
    @IBAction func towardHondHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 1.0
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "towardBond")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        toward bond
        """
        
        dynamicLigandHelpLabel.text =
        """
        used when viewing at atoms in a 2D space,
        indicates when a bond is coming towards
        the viewer in a 3D space
        """
    }
    
    
    @IBAction func awayBondHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 1.0
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "awayBond")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        away bond
        """
        
        dynamicLigandHelpLabel.text =
        """
        used when viewing at atoms in a 2D space,
        indicates when a bond is turned away
        from the viewer in a 3D space
        """
    }
    
    @IBAction func fiveSidedHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 1.0
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "fiveSided")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        cyclopentane
        """
        
        dynamicLigandHelpLabel.text =
        """
        this pentagram structure consists of
        five implied carbon atoms at the corners,
        each attached to two hydrogen atoms
        """
    }
    
    
    @IBAction func sixSidedHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 1.0
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "sixSided")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        cyclohexane
        """
        
        dynamicLigandHelpLabel.text =
        """
        one of the most common structures found
        in chemistry, there are six implied carbons
        at every corner
        """
    }
    
    @IBAction func sixSidedDoubleHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 1.0
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "sixSidedDouble")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        benzene
        """
        
        dynamicLigandHelpLabel.text =
        """
        a colorless carcinogen, similar to a
        cyclohexane but containing double bonds
        rather than single bonds
        """
    }
    
    @IBAction func sevenSidedHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 1.0
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "sevenSided")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        cycloheptane
        """
        
        dynamicLigandHelpLabel.text =
        """
        a seven sided structure with implied
        carbon atoms at every corner
        """
    }
    
    @IBAction func eightSidedHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 1.0
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "eightSided")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        cyclooctane
        """
        
        dynamicLigandHelpLabel.text =
        """
        a ring of eight carbon atoms each
        attached to two hydrogen atoms
        """
    }
    
    @IBAction func carbonHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 1.0
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        carbon
        """
        
        dynamicLigandHelpLabel.text =
        """
        can form up to four bonds with other atoms,
        in chemistry it is implied to be
        at every corner or end
        """
    }
    
    @IBAction func oxygenHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 1.0
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        oxygen
        """
        
        dynamicLigandHelpLabel.text =
        """
        can form up to two bonds with other atoms,
        highly reactive
        """
    }
    
    @IBAction func hydrogenHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 1.0
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        hydrogen
        """
        
        dynamicLigandHelpLabel.text =
        """
        it is implied that every atom that does
        not have its maximum number of bonds is
        attached to one or more hydrogens
        """
    }
    
    @IBAction func nitrogenHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 1.0
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        nitrogen
        """
        
        dynamicLigandHelpLabel.text =
        """
        can form up to three bonds with other atoms
        """
    }
    
    @IBAction func phosphorusHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 1.0
        heliumHelpOutlet.alpha = 0.2
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        phosphorus
        """
        
        dynamicLigandHelpLabel.text =
        """
        can form up to five bonds with other atoms,
        highly reactive
        """
    }
    
    @IBAction func heliumHelpTapped(_ sender: Any) {
        tapASymbolToLearnMoreLabel.alpha = 0.0
        singleBondHelpOutlet.alpha = 0.2
        doubleBondHelpOutlet.alpha = 0.2
        tripleBondHelpOutlet.alpha = 0.2
        awayBondHelpOutlet.alpha = 0.2
        towardBondHelpOutlet.alpha = 0.2
        fiveSidedHelpOutlet.alpha = 0.2
        sixSidedHelpOutlet.alpha = 0.2
        sixeSidedDoubleHelpOutlet.alpha = 0.2
        sevenSidedHelpOutlet.alpha = 0.2
        eightSidedHelpOutlet.alpha = 0.2
        carbonHelpOutlet.alpha = 0.2
        oxygenHelpOutlet.alpha = 0.2
        hydrogenHelpOutlet.alpha = 0.2
        nitrogenHelpOutlet.alpha = 0.2
        phosphorusHelpOutlet.alpha = 0.2
        heliumHelpOutlet.alpha = 1.0
        
        dynamicLigandHelpImageView.image = UIImage(named: "")
        
        dynamicHeaderLigandHelpLabel.text =
        """
        helium
        """
        
        dynamicLigandHelpLabel.text =
        """
        less common atom for typical ligand
        structures, colorless, odorless,
        tasteless, non-toxic
        """
    }
    
    
    
    
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
        
        self.scrollViewLigandSymbolsHelp?.contentSize = CGSize(width: 320, height: 1000)
    self.scrollViewLigandSymbolsHelp?.isDirectionalLockEnabled == true
        
        
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

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ligands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = ligands[indexPath.row].name
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
 
 
