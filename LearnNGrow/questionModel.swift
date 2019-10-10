//
//  QuestionModel.swift
//  LearnNGrow
//
//  Created by Priyankkumar Patel on 2019-07-29.
//  Copyright © 2019 Priyankkumar Patel. All rights reserved.
//

import Foundation

class QuestionModel{
    let question: String
    let answerA: String
    let answerB: String
    let answerC: String
    let answerD: String
    let trueAnswer: Int
    
    init(question: String, answerA: String, answerB: String, answerC: String, answerD: String, trueAnswer: Int) {
        self.question = question
        self.answerA = answerA
        self.answerB = answerB
        self.answerC = answerC
        self.answerD = answerD
        self.trueAnswer = trueAnswer
    }
    
}
