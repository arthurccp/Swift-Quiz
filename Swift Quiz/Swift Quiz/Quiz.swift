//
//  Quiz.swift
//  Swift Quiz
//
//  Created by Mac on 04/10/2021.
//  Copyright © 2021 br.com.arthursilva. All rights reserved.
//

import Foundation

class Quiz{
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question:String,options:[String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
        
    }
    
    deinit {
        print("liberou quiz da memoria" )
    }
    
}
