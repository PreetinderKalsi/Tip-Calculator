//
//  ViewController.swift
//  TipPro
//
//  Created by Preetinder Kalsi on 28/05/18.
//  Copyright © 2018 Preetinder Kalsi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipSelectorSegment: UISegmentedControl!
    @IBOutlet weak var tipAmountField: UITextField!
    @IBOutlet weak var totalAmountField: UITextField!
    @IBAction func calculateTip(_ sender: Any) {
        
        if let billAmount = Double(billAmountField.text!) {
            var tipPercentage = 0.00
            
            switch tipSelectorSegment.selectedSegmentIndex {
            case 0:
                tipPercentage = 0.05
            case 1:
                tipPercentage = 0.10
            case 2:
                tipPercentage = 0.15
            default:
                break
            }
            
            let roundedBillAmount = round(100 * billAmount) / 100
            let tipAmount = roundedBillAmount * tipPercentage
            let roundedTipAmount = round(100 * tipAmount) / 100
            let totalAmount = roundedTipAmount + roundedBillAmount
            
            
            if (!billAmountField.isEditing) {
                billAmountField.text = String(format: "%.2f", roundedBillAmount)
            }
            tipAmountField.text = String(format: "%.2f", roundedTipAmount)
            totalAmountField.text = String(format: "%.2f", totalAmount)
        } else {
            // show error
            billAmountField.text = ""
            tipAmountField.text = ""
            totalAmountField.text = ""
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let background = CAGradientLayer().turquoiseColour()
        background.frame = self.view.bounds
        
        self.view.layer.insertSublayer(background, at: 0)
        
        self.tipSelectorSegment.layer.cornerRadius = 5;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
