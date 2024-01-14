//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var title_label: UILabel!
    @IBOutlet weak var timer_text: UILabel!

    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7 ]
    var secondsRemaining = 60
    
    var timer = Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }

    @objc func updateCounter() {
        //example functionality
        if secondsRemaining > 0 {
            timer_text.text = String(secondsRemaining)
            print("\(secondsRemaining) seconds to the end of the world")
            secondsRemaining -= 1
        }
        else{
            timer.invalidate()
            title_label.text  = "Done!"
            timer_text.text = nil

        }
    }}
