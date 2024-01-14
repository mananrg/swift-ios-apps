//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by manan gandhi on 1/12/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text :  String
    let correctAnswer : String
    let answer: [String]
    
    init(q: String, a: [String], correctAnswer:String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
