//
//  ViewController.swift
//  miniProject
//
//  Created by Ladapim Vongkedtrachon on 9/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var correctCount : Int = 0
    var wrongCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = allQuestion.list[questionNumber].questionText
    }
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            print("picked true")
            pickedAnswer = true
        }else if sender.tag == 2 {
            print("picked false")
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber = questionNumber+1
        //        nextQuestion()
        updateUI()
    }//end function answerPressed
    
    func checkAnswer(){
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            print("you got it")
            score = score + 1
            correctCount = correctCount + 1
            ProgressHUD.showSuccess("ถูกต้องครับบบ")
            
        } else  {
            print("Wrong!")
            wrongCount = wrongCount + 1
            ProgressHUD.showError("ผิดครับบบ")
        }
        
    }// end checkAnswer
    
    func startOver() {
        questionNumber = 0
        score = 0
        correctCount = 0
        wrongCount = 0
        updateUI()
        
        
    }//end startOver
    func nextQuestion(){
        if questionNumber <= 4 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }else{
            print("end of question")
            
            let alert = UIAlertController(title: "Awsome", message: "You've finised all the question, do you want to start over?คะแนนของคุณคือ \(score)", preferredStyle: .alert)
            
            let restartAction = UIAlertAction( title: "Restart", style: .default, handler:{
                UIAlertAction in self.startOver()
                
            })
            
            alert.addAction(restartAction)
            
            present(alert,animated: true,completion: nil)
        }
        
    }
    func updateUI(){
        progressBar.frame.size.width = (view.frame.size.width / 5)
            * CGFloat(questionNumber)
        
        processLabel.text = String(questionNumber) + "/5"
        scoreLabel.text = "Score :" + String(score)
        
        correctAnsLabelReport.text = "Correct Ans:" + String(correctCount) + "=" +
            String((Float(correctCount)/5.0)*100)
        wrongAnsLabelReport.text = "Wrong Ans:" + String(wrongCount) + "=" +
            String((Float(wrongCount)/5.0)*100)
        
        nextQuestion()
    }
    
    
}//end class


