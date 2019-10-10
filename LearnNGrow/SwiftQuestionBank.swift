//
//  SwiftQuestionBank.swift
//  LearnNGrow
//
//  Created by Priyankkumar Patel on 2019-07-29.
//  Copyright © 2019 Priyankkumar Patel. All rights reserved.
//

import Foundation

class SwiftQuestionBank{
    var queue = [QuestionModel]()
    
    init() {
        queue.append(QuestionModel(question: "Which of the following values would be best represented with a constant?",
                                   answerA: "Player name",
                                   answerB: "Player level",
                                   answerC: "Player score",
                                   answerD: "Player location",
                                   trueAnswer: 1))
        
        queue.append(QuestionModel(question: "Which of the following declares a doubles with a value of 4.2 that can be set to nil at a later date?",
                                   answerA: "let height: Double? = 4.2",
                                   answerB: "var height: Double = 4.2",
                                   answerC: "var height: Double? = 4.2",
                                   answerD: "var height: Double? = nil",
                                   trueAnswer: 3))
        
        queue.append(QuestionModel(question: "Using type inference, which of the following variables would be assigned a Double type?",
                                   answerA: "let country = Belgium",
                                   answerB: "var state = Rhode Island",
                                   answerC: "let population = 142000",
                                   answerD: "let speedLimit = 75.0",
                                   trueAnswer: 4))
        
        queue.append(QuestionModel(question: "Which segue adapts its presentation style from modal to push if a navigation controller is present?",
                                   answerA: "Unwind",
                                   answerB: "Show",
                                   answerC: "Popover",
                                   answerD: "Replace",
                                   trueAnswer: 2))
        
        queue.append(QuestionModel(question: "Which protocol must be adopted to be adopted to provide custom text when using the print function?",
                                   answerA: "CustomStringConvertible",
                                   answerB: "Equatable",
                                   answerC: "Comparable",
                                   answerD: "Codable",
                                   trueAnswer: 1))
        
        queue.append(QuestionModel(question: "Which of the following is not a function that accepts a closure as an argument?",
                                   answerA: "sorted(by:)",
                                   answerB: "filter()",
                                   answerC: "map()",
                                   answerD: "filtered(by:)",
                                   trueAnswer: 4))
        
        queue.append(QuestionModel(question: "Which of the following is a great environment for prototyping Swift code?",
                                   answerA: "XCode",
                                   answerB: "Safari",
                                   answerC: "Terminal",
                                   answerD: "Playgrounds",
                                   trueAnswer: 4))
    }
}
