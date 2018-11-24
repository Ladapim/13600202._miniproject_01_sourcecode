//
//  QuestionBank.swift
//  quizzler101
//
//  Created by Ladapim Vongkedtrachon on 3/11/2561 BE.
//  Copyright © 2561 ICTSUIM. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question] ()
    
    init() {
        let item = Question (text: "วันนี้วันเราจะทำเว็บใช่มั้ย",correctAnswer:true)
        
        list.append(item)
        //index = 1
        list.append(Question(text: "วันนี้เราจะทำเว็บเสร็จมั้ย", correctAnswer: false))
        //index = 2
        list.append(Question(text: "วันนี้นอนแล้วหรือยัง", correctAnswer: true))
        //index = 3
        list.append(Question(text: "วันนี้กินข้าวแล้วหรือยัง", correctAnswer: true))
        //index = 4
        list.append(Question(text: "วันนี้สวยจร้า", correctAnswer: false))
    }
}
