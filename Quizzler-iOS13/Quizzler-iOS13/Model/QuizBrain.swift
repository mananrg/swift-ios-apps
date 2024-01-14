//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by manan gandhi on 1/14/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")


     
    ]
    
    var counter = 0
    var score = 0
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == quiz[counter].correctAnswer{
            score += 1
            return true
        }else{
            return false
        }
        
    }
    
    func getQuestionText() -> String{
        return quiz[counter].text
    }
    
    
    func getProgress() -> Float {
        return  Float(counter) / Float(quiz.count)

    }
    
    func getScore() -> Int{
        return score
    }
    func answerOptions() -> [String]{
        return quiz[counter].answer
    }
    
    
    mutating func nextQuestion(){
        if counter + 1 < quiz.count {
            counter += 1
            print("Question number \(counter)")
        }
        
     else{
                counter = 0
         score = 0
            print("Counter ")
            }
    }
}
