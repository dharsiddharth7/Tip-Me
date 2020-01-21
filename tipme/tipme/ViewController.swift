//
//  ViewController.swift
//  tipme
//
//  Created by Siddharth Dhar on 1/15/20.
//  Copyright © 2020 Siddharth Dhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipArray = [0.15,0.18,0.2]
        let tip = bill * tipArray[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

