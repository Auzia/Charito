//
//  Question.swift
//  Charito
//
//  Created by Amit on 9/8/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation

class Question {
    
    var question: String
    var arrayOfAnswers: [String] = ["answer0", "answer1", "answer2", "answer3"]
    var correctAnswer: Int
    
    init(question: String, arrayOfAnswers: [String], correctAnswer: Int)
    {
        self.question = question
        
        if (arrayOfAnswers.count != 4) {
            print("Error" + self.question)
        }
        self.arrayOfAnswers = arrayOfAnswers
        self.correctAnswer = correctAnswer
    }
}
