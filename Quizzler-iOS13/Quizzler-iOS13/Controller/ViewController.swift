//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    /*
    let quiz: [String: Bool] = [
        "Is the sun a star?": true,
        "Do plants need sunlight to grow?": true,
        "Are penguins able to fly?": false,
        "Is water wet?": true,
        "Can you hear sound in space?": false,
        "Do humans have tails?": false
    ]
    */
  var quizbrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //questionLabel.text = quiz[counter].text
        progressBar.progress = 0
       updateUI()
       
        
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer  = sender.currentTitle!
        let userGotItRight = quizbrain.checkAnswer(userAnswer: userAnswer)
        let originalColor = sender.backgroundColor
        
        
        
        if userGotItRight {
                  sender.backgroundColor = UIColor.green
              } else {
                  sender.backgroundColor = UIColor.red
              }
        
        quizbrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
     
    }
    @objc func updateUI(){
            questionLabel.text = quizbrain.getQuestionText()

            let answerChoices = quizbrain.answerOptions()
            choice1.setTitle(answerChoices[0], for: .normal)
            choice2.setTitle(answerChoices[1], for: .normal)
            choice3.setTitle(answerChoices[2], for: .normal)
            
            scoreLabel.text = "Score: \(quizbrain.getScore())"
            progressBar.progress = quizbrain.getProgress()
            choice1.backgroundColor = UIColor.clear
                   choice2.backgroundColor = UIColor.clear
                   
                   //Third button needs to be reset too.
                   choice3.backgroundColor = UIColor.clear
        }
    
}

