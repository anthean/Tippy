//
//  ViewController.swift
//  Basic Tip Calculator App
//
//  Created by Anthea Nguyen on 1/5/21.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        // 'view.endEditing' dismisses the keyboard
        view.endEditing(true)
    }
    
    // Logic to calculate the tip
    @IBAction func calculateTip(_ sender: Any) {
        // * Notes for Part 1*
        // everything to left of the question mark if it's not valid change to zero
        // let is what swift calls a variable
        // let is a constant (not changed)
        
        // 1. Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        
        // 2. Calculate the tip & total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        // 3. Update the tipe & total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        

    }
}

