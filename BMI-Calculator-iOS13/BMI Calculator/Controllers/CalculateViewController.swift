//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
  var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightValue: UISlider!
    @IBOutlet weak var weightValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f m", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.2f kg", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        let weight = weightValue.value
        let height = heightValue.value
  
        /*let secondVC = SecondViewController()
        secondVC.bmiValue = String(format:"%.1f" ,bmi)
        self.present(secondVC, animated: true, completion: nil)*/
        calculatorBrain.calculateBMI(height: height, weight: weight)
    
       performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    }
    
  

