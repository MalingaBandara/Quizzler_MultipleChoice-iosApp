//
//  Questions.swift
//  Multi choices Q
//
//  Created by Malinga on 2021-07-25.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let CorrectAnswer: String
    
    
    init(q: String, a: [String], correct: String) {
        self.text = q
        self.answers = a
        self.CorrectAnswer = correct
        
    }
}
