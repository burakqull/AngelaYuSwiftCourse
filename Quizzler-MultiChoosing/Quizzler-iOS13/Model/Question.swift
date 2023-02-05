//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Burak Gül on 5.02.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    var text : String
    var answer : [String]
    var correctAnswer : String
    
    
    init(q: String, a: [String],correctAnswer:String) {
        self.text = q
        self.answer = a
        self.correctAnswer=correctAnswer
    }
    
    
    
}

