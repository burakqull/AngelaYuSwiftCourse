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
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    var quizBrain=QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer=sender.currentTitle!
        
        let userGotItRight=quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor=UIColor.green
        }else {
            sender.backgroundColor=UIColor.red
        }
        quizBrain.nextQuestion()
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.backgroundColor=UIColor.clear
            self.updateUI()
        }
        
        
        
      
        
        
        
    }
    
    
    func updateUI()  {
        
        questionTextLabel.text=quizBrain.getQuestionText()
        updateButtonsText()
        scoreLabel.text="Score : \(quizBrain.getScore())"
        progressBar.progress=quizBrain.getProgress()
        
       
    }
    
    func updateButtonsText()   {
        button1.setTitle(quizBrain.getQuestionAnswer()[0], for: .normal)
        button2.setTitle(quizBrain.getQuestionAnswer()[1], for: .normal)
        button3.setTitle(quizBrain.getQuestionAnswer()[2], for: .normal)
        
    }
    
    
    
    
    
}

