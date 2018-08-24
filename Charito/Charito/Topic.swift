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
    var description: String

    init(name: String = "", description: String = "", questionPool: [Question] = []) {
        self.name = name
        self.questionPool = questionPool
        self.description = description
        
    }


}

    
