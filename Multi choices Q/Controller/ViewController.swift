//
//  ViewController.swift
//  Multi choices Q
//
//  Created by Malinga on 2021-07-25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btaB: UIButton!
    @IBOutlet weak var btaC: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var progress: UIProgressView!
    
    var quizBrain = QuizBrain()
    var userGotRight = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.progress = 0
        lblQuestion.text = quizBrain.getQuestionText() // change question
        btnA.setTitle( quizBrain.getAnswers(index: 0), for: .normal) // chage answer1
        btaB.setTitle( quizBrain.getAnswers(index: 1), for: .normal) // chage answer2
        btaC.setTitle( quizBrain.getAnswers(index: 2), for: .normal) //chabge answer3
    }

    
    
    @IBAction func userClick(_ sender: UIButton) {
        
        userGotRight = quizBrain.checkAnswers(sender.currentTitle!)
        
        if userGotRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
       
        quizBrain.nextQuestionIndex()//call next question
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false) // get some delay for "updateUI()"
       
    }
    
    @objc func updateUI(){
        lblQuestion.text = quizBrain.getQuestionText() // change question
        
        btnA.setTitle( quizBrain.getAnswers(index: 0), for: .normal) // chage answer1
        btaB.setTitle( quizBrain.getAnswers(index: 1), for: .normal) // chage answer2
        btaC.setTitle( quizBrain.getAnswers(index: 2), for: .normal) //chabge answer3
        
        progress.progress = quizBrain.getProgress() // set progrress bar
        lblScore.text = "Score: \(quizBrain.getScore())" //set score
        
        btnA.backgroundColor = UIColor.clear // clear highlighted color
        btaB.backgroundColor = UIColor.clear // clear highlighted color
        btaC.backgroundColor = UIColor.clear // clear highlighted color
    }
    


}

