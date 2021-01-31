//
//  ViewController.swift
//  Tip calculator
//
//  Created by user187772 on 1/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Billamount: UILabel!
    
    @IBOutlet weak var Tipamount:
        UILabel!
    
    
    @IBOutlet weak var Total:
        UILabel!
    
    
    @IBOutlet weak var Tipamounttextfield:
        UILabel!
    
    @IBOutlet weak var Totalamounttextfield:
        UILabel!
    
    
    @IBOutlet weak var Tipcontrol: UISegmentedControl!
    
    @IBOutlet weak var Billamounttextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatetip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(Billamounttextfield.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18, 0.2]
        let tip = bill * tipPercentages[Tipcontrol.selectedSegmentIndex]
        let Total = bill + tip
        
        //Update Tip Amount Label
        Tipamounttextfield.text = String(format: "$%.2f", tip)
        //Update Total Amount
        Totalamounttextfield.text = String(format: "$%.2f", Total)
        
        
    }
    

}

