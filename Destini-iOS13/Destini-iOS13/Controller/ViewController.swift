//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storybrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
       var userAnswer = sender.currentTitle!
        var currentBackground = sender.backgroundColor
        updateUI()
    }
    
    
    func updateUI(){
        let choice1 = storybrain.getChoice1()
        let choice2 = storybrain.getChoice2()
        storyLabel.text = storybrain.getStoryTitle()
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
        storybrain.nextStory()
    }

}

