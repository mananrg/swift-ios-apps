//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by manan gandhi on 1/15/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red // same as UIColor.red
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
