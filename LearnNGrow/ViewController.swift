//
//  ViewController.swift
//  LearnNGrow
//
//  Created by Priyankkumar Patel on 2019-07-29.
//  Copyright © 2019 Priyankkumar Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var answerD: UIButton!
    
    let swiftQuestions = SwiftQuestionBank()
    var queNumber: Int = 0
    var score: Int = 0
    var choosedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // to display first question to the story board.
        
        changeQuestion()
        questionCounter.text = "1/\(swiftQuestions.queue.count)"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func ansPressed(_ sender: UIButton) {
        if sender.tag == choosedAnswer{
            print("Correct")
            score += 1
        }else{
            print("Wrong")
        }
        
        if(queNumber < swiftQuestions.queue.count - 1){
            questionCounter.text = "\(queNumber+2)/\(swiftQuestions.queue.count)"
        }
        else{
            questionCounter.text = "\(queNumber+1)/\(swiftQuestions.queue.count)"
        }
        scoreLabel.text = "Score: \(score) / \(swiftQuestions.queue.count)"

        queNumber+=1
        changeQuestion()
    }
    
    func changeQuestion(){
        if(queNumber < swiftQuestions.queue.count){
            question.text = swiftQuestions.queue[queNumber].question
            answerA.setTitle(swiftQuestions.queue[queNumber].answerA, for: .normal)
            answerB.setTitle(swiftQuestions.queue[queNumber].answerB, for: .normal)
            answerC.setTitle(swiftQuestions.queue[queNumber].answerC, for: .normal)
            answerD.setTitle(swiftQuestions.queue[queNumber].answerD, for: .normal)
            choosedAnswer = swiftQuestions.queue[queNumber].trueAnswer
        }else{
            let alert = UIAlertController(title: "Awesome work", message: "You got \(score) correct out of \(swiftQuestions.queue.count). Do you wants to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            
            //     alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
//    func changeUI(){
//
//    }
    
    func restartQuiz(){
        score = 0
        queNumber = 0
        questionCounter.text = "1/\(swiftQuestions.queue.count)"
        scoreLabel.text = "Score: 0 / \(swiftQuestions.queue.count)"
        changeQuestion()
    }
}

