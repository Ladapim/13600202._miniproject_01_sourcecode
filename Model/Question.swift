//
//  Question.swift
//  quizzler101
//
//  Created by Ladapim Vongkedtrachon on 3/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation

class Question{
    let answer : Bool
    let questionText : String
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
