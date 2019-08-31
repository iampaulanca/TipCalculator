//
//  ViewController.swift
//  TipCalculator
//
//  Created by Paul Ancajima on 8/31/19.
//  Copyright © 2019 Paul Ancajima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billFIeld: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTips(_ sender: Any) {
        // get bill amount
        let bill = Double(billFIeld.text!) ?? 0
        
        //calculate the tip and total
        let tipPercentages = [0.10, 0.15, 0.20]
        var tip = tipPercentages[tipControl.selectedSegmentIndex] * bill
        tipLabel.text = String(format: "$%.2f", tip)
        
        // update the tip and total
        var total = tip + bill
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

