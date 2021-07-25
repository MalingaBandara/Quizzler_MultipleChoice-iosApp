//
//  QuizBrain.swift
//  Multi choices Q
//
//  Created by Malinga on 2021-07-25.
//

import Foundation

struct  QuizBrain{
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correct: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correct: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correct: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correct: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correct: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correct: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correct: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correct: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correct: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correct: "Australia")

    ]
    var questionNumber = 0
    var score = 0 // calculate score
    
    mutating func nextQuestionIndex(){
        if questionNumber + 1 < quiz.count{ // check runtime for this array values
            questionNumber += 1
        }else{
            questionNumber = 0 //reset the printing order
            score = 0 // rest score
        }
    }
    
    func getAnswers(index: Int) -> String{ //get question answer
        return quiz[questionNumber].answers[index]
    }
    func getQuestionText() -> String{ // get questions
        return quiz[questionNumber].text
    }
    
    mutating func checkAnswers(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].CorrectAnswer{
            score += 1
            return true
        }else{
            return false
        }
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    func getScore() -> Int {
        return score
    }
}
