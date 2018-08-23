//
//  File.swift
//  Charito
//
//  Created by Amit on 8/22/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation

class Topic {
    
    let name: String
    var questionPool: [Question]
    var averageScore: Float

    init(name: String = "", questionPool: [Question] = [], averageScore: Float = 0.0) {
        self.name = name
        self.questionPool = questionPool
        self.averageScore = averageScore
        
    }


}

    
