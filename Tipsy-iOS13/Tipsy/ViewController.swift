//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var stepperValue:Double = 2.0
    var billValue:Double = 0.0
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected =  false
        sender.isSelected = true
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        stepperValue = Double(splitNumberLabel.text!) ?? 2.0
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        billValue = Double(billTextField.text!) ?? 0.0
        print(billValue)
        switch true{
        case zeroPctButton.isSelected:
            billValue = (billValue + (billValue * 0.0)) / stepperValue
            print(billValue)
        case tenPctButton.isSelected:
            billValue = (billValue + (billValue * 0.1)) / stepperValue
            print(billValue)
        case twentyPctButton.isSelected:
            billValue = (billValue + (billValue * 0.2)) / stepperValue
            print(billValue)
            
        default:
            print("Tips are not selected")
        }
performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.calculatedValue = billValue
            print(billValue)
        }
    }
}

