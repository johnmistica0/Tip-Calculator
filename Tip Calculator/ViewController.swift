//
//  ViewController.swift
//  Tip Calculator
//
//  Created by John Mistica on 8/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Retrieves total bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculates tip based on selected segment (tip * tipPercentage)
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Updates tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateSlider(_ sender: Any) {
        
        //Retrieves total bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculates tip based on selected segment (tip * tipPercentage)
        let tip = bill * Double(tipSlider.value)
        let total = bill + tip
        
        //Updates tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

