//
//  TopicViewController.swift
//  Charito
//
//  Created by Kushan Weerakoon on 9/16/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation
import UIKit

class TopicViewController: UIViewController{
    @IBOutlet weak var topicName: UILabel!
    @IBOutlet weak var topicDescription: UILabel!
    @IBOutlet weak var topicExamples: UILabel!
    var grade = ""
    var topic: Topic = Topic()
    var qPool = QuestionPool()
    override func viewDidLoad() {
        print(grade)
        if grade == "fifthSixth"{
            topic = Topic(name: "5th and 6th Grade", description: "You will see basic \\\\arithmetic on this section", questionPool: qPool.fifthSixthQuestionPool)
            
        } else if grade == "seventhEighth"{
            topic = Topic(name: "7th and 8th Grade", description: "You will see basic \\\\arithmetic on this section along \\\\with some basic algebra\\\\ and geometry", questionPool: qPool.seventhEighthQuestionPool)
            
        } else if grade == "ninthTenth"{
            topic = Topic(name: "9th and 10th Grade", description: "You will see algebra\\\\ and geometry on this\\\\ section that is moderately complex.\\\\ You will also see some \\\\basic trigonometry.", questionPool: qPool.ninthTenthQuestionPool)
            
        } else if grade == "eleventhTwelfth"{
            topic = Topic(name: "11th and 12th Grade", description: "You will see some\\\\ trigonometry and other standard questions\\\\ for precalculus and calculus\\\\ students.", questionPool: qPool.eleventhTwelfthQuestionPool)
            
        }
        
        topicName.text = topic.name
        topicDescription.text = "Topics :" //CHANGE THIS LATER
        topicExamples.text = topic.description
        
        
        
    }
}
