//
//  File.swift
//  Charito
//
//  Created by Amit on 8/23/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation

class Game {
    
    let topics: [Topic]
    var pickedTopic: Int
    var score: Float
    
    init(topics: [Topic], pickedTopic: Int = 0, score: Float = 0.0){
        self.topics = topics
        self.pickedTopic = pickedTopic
        self.score = score
    }
}
